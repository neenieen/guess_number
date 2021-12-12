//top-level function
import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100);
  int count =0;
  print('╔═════════════════════════════════════════════════════');
  print('║                    GUESS THE NUMBER');
  print('║─────────────────────────────────────────────────────');

  while (true) {
    stdout.write('║ Guess the number between 1 and 100 : '); //ไม่ขึ้นบรรทัดใหม
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess != null) {
      if (guess == answer) {
        count++;
        print('║ ➜ '+guess.toString()+' is CORRECT ❤ , total guesses : ' + count.toString());
        print('║─────────────────────────────────────────────────────');
        print('║                      THE END');
        print('╚═════════════════════════════════════════════════════');
        break;
      } else if(guess > answer){
        print('║ ➜ '+guess.toString()+' IS TOO HIGTH! ▲');
        print('║─────────────────────────────────────────────────────');
        count++;
      }else if(guess < answer){
        count++;
        print('║ ➜ '+guess.toString()+' IS TOO LOW! ▼');
        print('║─────────────────────────────────────────────────────');
      }
    }
  }
}
