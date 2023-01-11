import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_jumbled_words_test/rules.dart';
import "dart:math";

import 'dummy.dart';

var clicked = 'False';
var cat = '';
var word = 0;
String words = word.toString();
var coin = 0;
String coins = coin.toString();
var coin2 = 200;
int count = 1;
int score = 0;
String coins2 = coin.toString();
var originalList = [
  'Headwords', 'First', 'Words', 'ABLE', 'ABOUT', 'ABOVE', 'ABSOLUTE', 'ACCEPT', 'ACROSS', 'ACTUAL', 'ADDRESS', 'ADMIT', 'ADVERTISE', 'AFFORD', 'AFRAID', 'AFTER', 'AFTERNOON', 'AGAIN', 'AGAINST', 'AGREE', 'AHEAD', 'ALLOW', 'ALMOST', 'ALONE', 'ALONG', 'ALREADY', 'ALRIGHT', 'ALSO', 'ALTHOUGH', 'ALWAYS', 'AMAZE', 'AMONG', 'AMOUNT', 'ANGRY', 'ANIMAL', 'ANOTHER', 'ANSWER', 'APART', 'APPARENT', 'APPEAR', 'AREA', 'AROUND', 'ARRANGE', 'ARRIVE', 'ASHAMED', 'AUNT', 'AUTUMN', 'AWARE', 'AWAY', 'AWFUL', 'BABY', 'BACK', 'BALL', 'BANK', 'BASE', 'BASIC', 'BATH', 'BEACH', 'BEAR', 'BEAT', 'BEAUTY', 'BECAUSE', 'BECOME', 'BEFORE', 'BEGIN', 'BEHIND', 'BELIEVE', 'BELOW', 'BENEATH', 'BESIDE', 'BEST', 'BETTER', 'BETWEEN', 'BEYOND', 'BILL', 'BILLION', 'BIRD', 'BIRTH', 'BLACK', 'BLOOD', 'BLOW', 'BLUE', 'BOARD', 'BOAT', 'BODY', 'BONE', 'BOOK', 'BORING', 'BORN', 'BOTH', 'BOTHER', 'BOTTLE', 'BOTTOM', 'BREAD', 'BREAK', 'BREAKFAST', 'BREATH', 'BRIGHT', 'BRING', 'BROTHER', 'BROWN', 'BUILD', 'BURN', 'Headwords', 'First', 'Words', 'BUSH', 'BUSINESS', 'BUSY', 'CAKE', 'CALL', 'CAMP', 'CARD', 'CARE', 'CARRY', 'CASE', 'CATCH', 'CAUSE', 'CENTRE', 'CERTAIN', 'CHAIR', 'CHANCE', 'CHANGE', 'CHARGE', 'CHEAP', 'CHECK', 'CHICKEN', 'CHILD', 'CHIP', 'CHOICE', 'CHOOSE', 'CHRISTMAS', 'CHURCH', 'CITY', 'CLASS', 'CLEAN', 'CLEAR', 'CLIMB', 'CLOCK', 'CLOSE', 'CLOSED', 'CLOTHES', 'CLUB', 'COAT', 'COFFEE', 'COLD', 'COLLECT', 'COLLEGE', 'COLOUR', 'COME', 'COMFORT', 'COMPANY', 'COMPLETE', 'COMPUTER', 'CONCERN', 'CONSIDER', 'CONTINUE', 'CONTROL', 'CONVERSATION', 'COOK', 'COOL', 'CORNER', 'COST', 'COULD', 'COUNT', 'COUNTRY', 'COUPLE', 'COURSE', 'COURT', 'COVER', 'CRAZY', 'CRIME', 'CROSS', 'DANCE', 'DANGER', 'DARK', 'DARLING', 'DATE', 'DAUGHTER', 'DEAD', 'DEAL', 'DEAR', 'DEATH', 'DECIDE', 'DEEP', 'DEFINITE', 'DEGREE', 'DELICIOUS', 'DEPEND', 'DIFFERENCE', 'DIFFERENT', 'DIFFICULT', 'DINNER', 'DIRTY', 'DISCOVER', 'DOCTOR', 'DOOR', 'DOUBLE', 'DOUBT', 'DOWN', 'DRAW', 'DREAM', 'DRESS', 'DRINK', 'DRIVE', 'DROP', 'DRUG', 'DURING', 'EACH', 'EARLY', 'EARTH', 'EAST', 'Headwords', 'First', 'Words', 'EASY', 'EDGE', 'EDUCATE', 'EIGHT', 'EITHER', 'ELEVEN', 'ELSE', 'EMPLOY', 'EMPTY', 'ENGINE', 'ENJOY', 'ENOUGH', 'ENTER', 'ESPECIALLY', 'EVEN', 'EVENING', 'EVER', 'EVERY', 'EXACT', 'EXCEPT', 'EXCITE', 'EXCUSE', 'EXPECT', 'EXPENSIVE', 'EXPERIENCE', 'EXPLAIN', 'EXPRESS', 'EXTRA', 'FACE', 'FACT', 'FAIR', 'FALL', 'FAMILY', 'FARM', 'FAST', 'FATHER', 'FAVOURITE', 'FEAR', 'FEED', 'FEEL', 'FELLOW', 'FIELD', 'FIGHT', 'FIGURE', 'FILL', 'FILM', 'FINAL', 'FIND', 'FINE', 'FINGER', 'FINISH', 'FIRE', 'FIRST', 'FISH', 'FIVE', 'FLAT', 'FLOOR', 'FLOWER', 'FOLLOW', 'FOOD', 'FOOT', 'FOOTBALL', 'FORCE', 'FOREST', 'FORGET', 'FORM', 'FORTUNATE', 'FORWARD', 'FOUR', 'FREE', 'FREEZE', 'FRESH', 'FRIDAY', 'FRIEND', 'FRIGHT', 'FROM', 'FRONT', 'FULL', 'FURTHER', 'GAME', 'GARDEN', 'GENERAL', 'GENTLE', 'GIRL', 'GIVE', 'GLAD', 'GLANCE', 'GLASS', 'GOLD', 'GOOD', 'GOODBYE', 'GOVERN', 'GRANDFATHER', 'GRASS', 'GREAT', 'GREEN', 'GREY', 'GROUND', 'GROUP', 'GROW', 'GUESS', 'HAIR', 'HALF', 'HALL', 'HAND', 'HANDLE', 'Headwords', 'First', 'Words', 'HANG', 'HAPPEN', 'HAPPY', 'HARD', 'HARDLY', 'HATE', 'HAVE', 'HEAD', 'HEALTH', 'HEAR', 'HEART', 'HEAT', 'HEAVY', 'HELL', 'HELLO', 'HELP', 'HERE', 'HIDE', 'HIGH', 'HILL', 'HISTORY', 'HOLD', 'HOLE', 'HOLIDAY', 'HOME', 'HONEST', 'HONOUR', 'HOPE', 'HORRIBLE', 'HORSE', 'HOSPITAL', 'HOUR', 'HOUSE', 'HOWEVER', 'HUGE', 'HUMAN', 'HUNDRED', 'HUNGER', 'HUNT', 'HURRY', 'HURT', 'HUSBAND', 'IDEA', 'IMAGINE', 'IMPORTANT', 'INDEED', 'INFORM', 'INSIDE', 'INSTEAD', 'INSURE', 'INTEREST', 'INTERNET', 'INTO', 'INVOLVE', 'ISLAND', 'ISSUE', 'JOIN', 'JOKE', 'JUDGE', 'JUMP', 'JUST', 'KEEP', 'KICK', 'KILL', 'KIND', 'KING', 'KISS', 'KITCHEN', 'KNOCK', 'KNOW', 'LADY', 'LAKE', 'LAND', 'LARGE', 'LAST', 'LATE', 'LAUGH', 'LAZY', 'LEAD', 'LEARN', 'LEAST', 'LEAVE', 'LEFT', 'LESS', 'LETTER', 'LEVEL', 'LIFE', 'LIFT', 'LIGHT', 'LIKE', 'LINE', 'LIST', 'LISTEN', 'LITTLE', 'LIVE', 'LOAD', 'LOCAL', 'LOCK', 'LONG', 'LOOK', 'LORD', 'LOSE', 'LOUD', 'LOVE', 'Headwords', 'First', 'Words', 'LOVELY', 'LUCK', 'LUNCH', 'MACHINE', 'MAIN', 'MAJOR', 'MAKE', 'MANAGE', 'MANY', 'MARK', 'MARKET', 'MARRY', 'MASTER', 'MATTER', 'MAYBE', 'MEAL', 'MEAN', 'MEET', 'MEMBER', 'MENTION', 'MESS', 'MIDDLE', 'MIGHT', 'MILE', 'MILK', 'MILLION', 'MIND', 'MINUTE', 'MISS', 'MISTAKE', 'MISTER', 'MOMENT', 'MONDAY', 'MONEY', 'MONTH', 'MORE', 'MORNING', 'MOST', 'MOTHER', 'MOUNTAIN', 'MOUTH', 'MOVE', 'MOVIE', 'MUCH', 'MUSIC', 'MUST', 'NAME', 'NATION', 'NATURE', 'NAUGHTY', 'NEAR', 'NEAT', 'NECESSARY', 'NECK', 'NEED', 'NEIGHBOUR', 'NEVER', 'NEWS', 'NEXT', 'NICE', 'NIGHT', 'NINE', 'NOBODY', 'NOISE', 'NONE', 'NORMAL', 'NORTH', 'NOSE', 'NOTE', 'NOTHING', 'NOTICE', 'NUMBER', 'NURSE', 'OBVIOUS', 'OFFER', 'OFFICE', 'OFFICER', 'OFTEN', 'ONCE', 'ONLY', 'OPEN', 'ORANGE', 'ORDER', 'OTHER', 'OUGHT', 'OVER', 'OWNED', 'PACK', 'PAGE', 'PAIN', 'PAINT', 'PAIR', 'PAPER', 'PARDON', 'PARENT', 'PARK', 'PART', 'PARTICULAR', 'PARTY', 'PASS', 'PAST', 'PENNY', 'Headwords', 'First', 'Words', 'PEOPLE', 'PERFECT', 'PERHAPS', 'PERSON', 'PHOTOGRAPH', 'PICK', 'PICTURE', 'PIECE', 'PLACE', 'PLAN', 'PLANT', 'PLAY', 'PLEASE', 'PLENTY', 'PLUS', 'POINT', 'POLICE', 'POOR', 'POSITION', 'POSSIBLE', 'POST', 'POUND', 'POWER', 'PREPARE', 'PRESENT', 'PRESS', 'PRETTY', 'PRICE', 'PRINCE', 'PRISON', 'PROBABLY', 'PROBLEM', 'PROGRAMME', 'PROMISE', 'PROPER', 'PROTECT', 'PUBLIC', 'PULL', 'PUSH', 'QUARTER', 'QUEEN', 'QUESTION', 'QUICK', 'QUIET', 'QUITE', 'RABBIT', 'RACE', 'RADIO', 'RAIN', 'RAISE', 'RATE', 'RATHER', 'REACH', 'READ', 'READY', 'REAL', 'REALISE', 'REALLY', 'REASON', 'RECENT', 'RECORD', 'RELATE', 'REMEMBER', 'RENT', 'REPLY', 'REPORT', 'RESPONSIBLE', 'REST', 'RETURN', 'RICH', 'RIDE', 'RIGHT', 'RIGHTS', 'RING', 'RISE', 'RIVER', 'ROAD', 'ROCK', 'ROLL', 'ROOM', 'ROUGH', 'ROUND', 'RUBBISH', 'RULE', 'SAFE', 'SAIL', 'SAME', 'SATURDAY', 'SAVE', 'SCARE', 'SCHOOL', 'SCIENCE', 'SEAT', 'SECOND', 'SECURE', 'SEEM', 'SELF', 'SELL', 'SEND', 'SENSE', 'SERIOUS', 'SERVE', 'SERVICE', 'SETTLE', 'SEVEN', 'SEVERAL', 'SHAKE', 'SHALL', 'SHAPE', 'SHARE', 'SHIP', 'Headwords', 'First', 'Words', 'SHIRT', 'SHOE', 'SHOOT', 'SHOP', 'SHORT', 'SHOULD', 'SHOULDER', 'SHOUT', 'SHOW', 'SHUT', 'SICK', 'SIDE', 'SIGHT', 'SIGN', 'SILLY', 'SIMPLE', 'SINCE', 'SING', 'SINGLE', 'SISTER', 'SITUATION', 'SIZE', 'SKIN', 'SLEEP', 'SLIGHT', 'SLIP', 'SLOW', 'SMALL', 'SMELL', 'SMILE', 'SMOKE', 'SNOW', 'SOFT', 'SOME', 'SONG', 'SOON', 'SORRY', 'SORT', 'SOUND', 'SOUTH', 'SPACE', 'SPEAK', 'SPECIAL', 'SPEND', 'SPORT', 'SPOT', 'SPRING', 'SQUARE', 'STAGE', 'STAND', 'STAR', 'STARE', 'START', 'STATE', 'STATION', 'STAY', 'STEAL', 'STEP', 'STICK', 'STILL', 'STONE', 'STOP', 'STORE', 'STORY', 'STRAIGHT', 'STRANGE', 'STREET', 'STRIKE', 'STRONG', 'STUDENT', 'STUDY', 'STUFF', 'STUPID', 'SUBJECT', 'SUCH', 'SUDDEN', 'SUGGEST', 'SUIT', 'SUMMER', 'SUNDAY', 'SUPPORT', 'SUPPOSE', 'SURE', 'SURPRISE', 'SWEET', 'SWIM', 'SYSTEM', 'TABLE', 'TAIL', 'TAKE', 'TALK', 'TALL', 'TAPE', 'TASTE', 'TEACH', 'TEAM', 'TEAR', 'TELEPHONE', 'TELEVISION', 'TELL', 'TEND', 'TERM', 'TERRIBLE', 'TEST', 'THAN', 'THANK', 'THAT', 'THEN', 'THERE', 'THEY', 'THICK', 'THING', 'Headwords', 'First', 'Words', 'THINK', 'THIRST', 'THIRTEEN', 'THIRTY', 'THIS', 'THOUGH', 'THOUSAND', 'THREE', 'THROAT', 'THROUGH', 'THROW', 'THURSDAY', 'TIGHT', 'TILL', 'TIME', 'TIRE', 'TODAY', 'TOGETHER', 'TOMORROW', 'TONIGHT', 'TOOTH', 'TOTAL', 'TOUCH', 'TOWARD', 'TOWN', 'TRACK', 'TRAIN', 'TRAVEL', 'TREAT', 'TREE', 'TRIP', 'TROUBLE', 'TRUE', 'TRUST', 'TRUTH', 'TUESDAY', 'TURN', 'TWELVE', 'TWENTY', 'TYPE', 'UGLY', 'UNCLE', 'UNDER', 'UNDERNEATH', 'UNDERSTAND', 'UNLESS', 'UNTIL', 'UPON', 'USUAL', 'VERY', 'VIDEO', 'VIEW', 'VISIT', 'VOICE', 'WAIT', 'WAKE', 'WALK', 'WALL', 'WANT', 'WARM', 'WASH', 'WASTE', 'WATCH', 'WATER', 'WAVE', 'WEAR', 'WEATHER', 'WEDNESDAY', 'WEEK', 'WEIGHT', 'WELL', 'WEST', 'WHAT', 'WHEEL', 'WHEN', 'WHERE', 'WHETHER', 'WHICH', 'WHILE', 'WHITE', 'WHOLE', 'WIDE', 'WIFE', 'WILD', 'WILL', 'WIND', 'WINDOW', 'WINE', 'WINTER', 'WISH', 'WITH', 'WITHIN', 'WITHOUT', 'WOMAN', 'WONDER', 'WOOD', 'WORD', 'WORK', 'WORLD', 'WORRY', 'WORSE', 'WORTH', 'WOULD', 'WRITE', 'WRONG', 'YARD'
];
String scrambleWord = '';
Map<String, String> scrambleMap = HashMap();
final _random = Random();
String randomScrambledWord = "";
var keys;

void main() {
  for (var i = 0; i < originalList.length; i++) {
    var originalWord = originalList[i];
    scrambleWord = generateScrambledWord(originalWord);
    scrambleMap.putIfAbsent(scrambleWord.toLowerCase(), () => originalWord.toLowerCase());
  }
  keys = scrambleMap.keys.toList();
  randomScrambledWord = keys[_random.nextInt(keys.length)];
  runApp(const MaterialApp(home: RulesPage()));
}

String generateScrambledWord(String word) {
  List<int> positionList = [];
  String scrambledWord = '';
  for (var i = 0; i < word.length; i++) {
    positionList.add(i);
  }
  int initialListLength = positionList.length;
  for (var i = 0; i < initialListLength; i++) {
    int position = _random.nextInt(positionList.length);
    int valueAtPosition = positionList[position];
    scrambledWord = scrambledWord + word[valueAtPosition];
    positionList.removeAt(position);
  }
  return scrambledWord;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins'
      ),
      home: TextInputWidget(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Word Scramble ')), body: TextInputWidget());
//   }
// }

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  late FocusNode myFocusNode;
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    myFocusNode.dispose();
  }

  // ignore: non_constant_identifier_names
  void Change2() {
    setState(() {
      clicked = 'True';
      if (clicked == 'True') {

        if (text.toLowerCase() == scrambleMap[randomScrambledWord]) {
          text = 'b';
          cat = 'clue = b';
          coin = coin - 1;
          text = "";
          cat = 'Correct!';
          controller.clear();
          randomScrambledWord = keys[_random.nextInt(keys.length)];
          count++;
          score = score + 10;
        } else {
          cat = 'Incorrect!\nThe answer is: ${scrambleMap[randomScrambledWord]}';
          controller.clear();
          randomScrambledWord = keys[_random.nextInt(keys.length)];
          if (score > -25){
            score = score - 5;
          }
        }

        if (word == 2) {
          coin2 = coin + 1;
          coins2 = coin2.toString();
          word = 0;
          words = word.toString();
        }
        if (coin == 0) {
          coin = coin + 1;
        }
        if (text == 'exit') {
          controller.clear();
          cat = '';
          text = "";
        }
      }
    });
    if (score >= 120){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Dummy())); // (TODO: ADD ROUTE TO CLUE PAGE)
    }
  }

  // ignore: non_constant_identifier_names
  void Change() {
    setState(() {
      cat =
      'go to https://www.youtube.com/watch?v=NZwqycq70ns for rules to the app';
    });
  }

  void change(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    myFocusNode = FocusNode();
    return Scaffold(
      backgroundColor: const Color(0xf8f8f8ff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Word $count",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          fontFamily: 'Poppins'
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        randomScrambledWord,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: 'Poppins'
                        ),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextField(
                          autofocus: true,
                          controller: controller,
                          decoration: InputDecoration(
                            labelText: "Unscramble here",
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0),
                            ),
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.send, color: Colors.black),
                                splashColor: Colors.black,
                                tooltip: 'Done',
                                onPressed: Change2,
                            ),
                          ),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'
                            ),
                            focusNode: myFocusNode,
                            onChanged: (text) => change(text),
                          onSubmitted: (text){
                            Change2();
                            controller.clear();
                            myFocusNode.requestFocus();
                          },
                          ),
                      ),
                      const SizedBox(height: 25),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     // OptionButton(icon: Icons.keyboard, workFunction: (){}, label: "Type"),
                      //     // OptionButton(icon: Icons.question_mark, workFunction: (){}, label: "Hint"),
                      //     // OptionButton(icon: Icons.remove_red_eye, workFunction: (){}, label: "Reveal")
                      //   ],
                      // ),
                      const SizedBox(height: 25),
                      SizedBox(
                        height: 60.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            cat,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Poppins'
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      Text(
                        "Score: $score",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: 'Poppins'
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: <Widget>[
  //       TextField(
  //           autocorrect: false,
  //           autofocus: true,
  //           obscureText: true,
  //           controller: this.controller,
  //           decoration: new InputDecoration(
  //             hintText: "Enter Answer",
  //             suffixIcon: IconButton(
  //                 icon: Icon(Icons.send),
  //                 splashColor: Colors.blue,
  //                 tooltip: 'Send your to do list',
  //                 onPressed: Change2),
  //           ),
  //           onChanged: (text) => this.change(text)),
  //       Text('Your Answer = ' + text, style: TextStyle(fontSize: 20)),
  //       Text('scrambled word = ' + randomScrambledWord,
  //           style: TextStyle(fontSize: 20)),
  //       Text(cat, style: TextStyle(fontSize: 20)),
  //     ]),
  //   );
  // }
}
