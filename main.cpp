#include "main.h"

using namespace std;

void CheckOpt(int &argc, char** &argv){
    int optionIndex= 0;
    int opt;
    const char* option="hid:s"; //인자값 필요로 한다면 :붙이기 ex) hib:s:

    while((opt = getopt_long(argc, argv, option, options, &optionIndex)) != -1 ){
        switch(opt){
            case 'h':
                help(); 
                break;

            case 'i':
                info();
                break;

            case 'd':
                detect(argv[2]);
                break;
            
            case 's':

                break;

            case '?':
                error();
                break;

            default:
                abort();
        }
    }

}

int main(int argc, char **argv){
    //옵션 값 확인
    if (argc > 1) 
        CheckOpt(argc, argv);
    else
        cout << "Try 'UdkdAgent --help' for more information." << endl;

    return 0;
}