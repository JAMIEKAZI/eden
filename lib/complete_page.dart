import 'package:flutter/material.dart';
import 'package:trivia_quiz/Home_page.dart';

class Completed extends StatelessWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Completed(
        body: Column(
          children:  [
            SizedBox(
             height: 521,
             width: 600,
              child: Stack(
                children: [
                  Container(
                    height: 340,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [Colors.deepOrange, Colors.purple],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 81,
                        backgroundColor: Colors.white.withOpacity(.1),
                        child: CircleAvatar(
                          radius: 71,
                          backgroundColor: Colors.white.withOpacity(.1),
                          child: CircleAvatar(
                            radius: 61,
                            backgroundColor: Colors.white.withOpacity(.6),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:  [
                                  const Text('Your Score', style: TextStyle(
                                    fontSize: 20, color: Colors.purple,
                                  ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: '100', style: TextStyle(
                                      fontSize: 20, color: Colors.purple,
                                    ),
                                      children: [
                                        TextSpan(
                                              text: 'pt', style: TextStyle(
                                              fontSize: 20, color: Colors.purple,
                                            ),
                                        ),
                                      ],
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom:60 ,
                    left: 22,
                    child: Container(
                      width: 390, height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 3,
                            color: const Color(0xffc73c73).withOpacity(.7),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:  const EdgeInsets.symmetric( horizontal: 15),
                        child: Center(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 10,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffc73c73),
                                              ),
                                            ),
                                            const Text('100%',
                                              style: TextStyle(
                                              fontWeight: FontWeight.w500,fontSize: 20,
                                              color:Colors.purple,
                                            ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text('Completion'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 10,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffc73c73),
                                              ),
                                            ),
                                            const Text('100%',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,fontSize: 20,
                                                color:Colors.purple,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text('Total Question'),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 10,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffc73c73),
                                              ),
                                            ),
                                            const Text('100%',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,fontSize: 20,
                                                color:Colors.purple,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text('Correct'),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 10,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.red,
                                              ),
                                            ),
                                            const Text('03',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,fontSize: 20,
                                                color:Colors.purple,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text('Wrong'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                        ),
                        ),
                      ),
                    ),
                  )
                ],
            ),
              ),
            const SizedBox(
              height: 40,),
              Center(
                  child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder:(context)=> Homepage(),
                                ),
                                  );
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.teal,
                              radius: 35,
                              child: Center(
                                child: Icon(Icons.refresh,size: 35, color:Colors.white,),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                            Text(
                              'Play again', style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.w500),
                            ),
                        ],
                      ),
                      Column(
                        children:  [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 35,
                            child: Center(
                              child: Icon(Icons.visibility_off_rounded,size:35, color:Colors.white,),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Review Answer', style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 35,
                            child: Center(
                              child: Icon(Icons.share_rounded,size: 35, color:Colors.white,),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Share score', style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
            ),
              ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.picture_as_pdf_rounded,size: 35, color:Colors.white,),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Generate PDF', style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.purpleAccent,
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.home,size: 35, color:Colors.white,),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Home', style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 35,
                        child: Center(
                          child: Icon(Icons.leaderboard_rounded,size: 35, color:Colors.white,),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Leaderboard', style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
            ),
        ),
      );
  }
}
