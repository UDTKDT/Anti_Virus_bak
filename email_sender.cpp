#include <curl/curl.h>
#include <string>
#include <fstream>
#include <iostream>
#include "email_sender.h"
#include "event_monitor.h"
#include "util.h"

// Gmail SMTP 서버 설정
#define SMTP_SERVER "smtps://smtp.gmail.com"
#define SMTP_PORT 465
#define EMAIL_ADDRESS "udangtang02@gmail.com"


// 메일 보내는 함수
int SendEmailWithAttachment() {
    std::string toEmail;
    std::cout << "Enter recipient's email address: ";
    std::getline(std::cin, toEmail);

    // libcurl 초기화
    CURL *curl = curl_easy_init();
    if (!curl) {
        std::cerr << "Failed to initialize libcurl." << std::endl;
        return -1;
    }

    std::string subject = "Test Email with Log File";
    std::string body = "This email contains a log file as attachment.";

    const std::string logFilePath = GetLogFileName();
    FILE *logFile = fopen(logFilePath.c_str(), "rb");
    if (!logFile) {
        std::cerr << "Failed to open log file." << std::endl;
        return -1;
    }

    // 수신자 설정
    struct curl_slist* recipients = NULL;
    recipients = curl_slist_append(recipients, toEmail.c_str());

    // 이메일 헤더에 Subject 추가
    struct curl_slist* headers = NULL;
    headers = curl_slist_append(headers, ("Subject: " + subject).c_str());


    curl_mime *mime;
    curl_mimepart *part;
    // MIME 핸들 생성
    mime = curl_mime_init(curl);

    // 이메일 본문 추가
    part = curl_mime_addpart(mime);
    curl_mime_data(part, body.c_str(), CURL_ZERO_TERMINATED);
    curl_mime_type(part, "text/plain");

    // 첨부파일 추가
    part = curl_mime_addpart(mime);
    curl_mime_filedata(part, logFilePath.c_str());
    curl_mime_type(part, "application/octet-stream");
    curl_mime_encoder(part, "base64");
    curl_mime_filename(part, "logfile.log");

    // libcurl 옵션 설정
    curl_easy_setopt(curl, CURLOPT_URL, SMTP_SERVER);
    curl_easy_setopt(curl, CURLOPT_PORT, SMTP_PORT);
    curl_easy_setopt(curl, CURLOPT_USERNAME, EMAIL_ADDRESS);
    curl_easy_setopt(curl, CURLOPT_PASSWORD, EMAIL_PASSWORD);
    curl_easy_setopt(curl, CURLOPT_USE_SSL, CURLUSESSL_ALL);
    curl_easy_setopt(curl, CURLOPT_MAIL_FROM, "<" EMAIL_ADDRESS ">");
    curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, recipients);
    curl_easy_setopt(curl, CURLOPT_MIMEPOST, mime);
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);

    // 이메일 전송
    CURLcode res = curl_easy_perform(curl);
    // 리소스 정리
    curl_mime_free(mime);
    curl_slist_free_all(recipients);
    curl_slist_free_all(headers);
    curl_easy_cleanup(curl);

    if (res != CURLE_OK) {
        std::cerr << "Failed to send email: " << curl_easy_strerror(res) << std::endl;
        return -1;
    }

    return SUCCESS_CODE;
}