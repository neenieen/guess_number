//top-level function
import 'dart:io';
import 'dart:math';

void main(){
  var i =0;
  var r = Random();
  var answer = r.nextInt(10);

  while(true) {
    //print('kk'); ขึ้นบรรทัดใหม่
    stdout.write('Please guess the number : '); //ไม่ขึ้นบรรทัดใหม่
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == answer){
      print('Correct!!! Answer is '+ input);
      break;
    }else{
      print('Incorrect!!! Please try again');
    }
  }
}