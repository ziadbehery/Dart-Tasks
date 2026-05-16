import 'dart:io';
void main(){
    String? input = stdin.readLineSync();
    
    if(input != null){
        int degree = int.parse(input);
        if(degree >= 90){
        print('Excellent');
        }else if(degree >= 80){
            print('very good');
        }else if(degree >= 70){
            print('good');
        }else if(degree >= 60){
            print('accepted');
        }else{
            print('failed');
        }
    }
}