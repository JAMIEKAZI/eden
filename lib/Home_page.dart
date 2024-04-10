// ignore_for_file: prefer_const_constructors, unused_import, unused_local_variable
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:trivia_quiz/complete_page.dart';
import 'Options.dart';
import 'package:http/http.dart' as http;
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
    String username = 'Jamiekazi';


class _HomePageState extends State<HomePage> {

  List responseData = [];
  
  final int number = 0;
  List<String> shuffledOptions=[];
   
  Future api ()async{

      final response =await http.get(Uri.parse('https://opentdb.com/api.php?amount=10'));
          var data  = jsonDecode(response.body)['results'];
           setState(() {
            responseData= data;
  });}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    api();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.pink,
          elevation: 0,
          title: const Text('Trivia Quiz',
            style: TextStyle(
              fontSize:15,
              fontWeight: FontWeight.bold,
            ),

          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(16),
              child: buildWelcome(username),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepOrange, Colors.purple],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
        body: Padding(
         padding:  const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 421,
                  width: 400,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [Colors.deepOrange, Colors.purple],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5 ,
                        left: 13, child: Container(
                        height: 230,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:  BorderRadius.circular(20),
                          boxShadow:   const [
                            BoxShadow(
                              offset: Offset(0,1),
                              blurRadius: 5,
                                spreadRadius: 3,
                              color: Color(0xffc73c73)
                            ),
                          ]
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('05', style: TextStyle(
                                      color: Colors.green, fontSize: 20,fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ),
                                  Text('10', style: TextStyle(
                                    color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                    ],
                              ),
                              const Center(
                                child: Text('Question 3/10',
                                  style: TextStyle(color: Colors.purple,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(responseData.isNotEmpty?responseData[number]['question']:''),
                            ],
                          ),
                        ),
                      ) ,
                      ),
                      const Positioned(
                        bottom: 190,
                        left: 140,
                        child: CircleAvatar(
                          radius: 42,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Text(
                              '15',style: TextStyle(
                              color: Color(0xffc73c73),
                            ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ),

                 const SizedBox(height: 10,),
                Options(options: responseData.isNotEmpty? responseData[number]['correct_answer']:''),
                Options(options: responseData.isNotEmpty? responseData[number]['incorrect_answers'][0]:''),
                Options(options: responseData.isNotEmpty? responseData[number]['incorrect_answers'][0]:''),
                Options(options: responseData.isNotEmpty? responseData[number]['incorrect_answers'][0]:'' ),

                 const SizedBox(height: 5,),

                Padding(padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary:  Color(0xffc73c73),
                        padding:  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                  ),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Completed()));
                      },

                      child: Container(
                        alignment: Alignment.center,
                        child: const Text('Next',
                          style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18,
                          ),
                        ),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
//  void nextQuestion (){

//   if (number==9){
//     Completed();
//   }
//   setState ((){
//     number = number +1;
//   });
//  }


