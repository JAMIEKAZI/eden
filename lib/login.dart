// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'Home_page.dart';

buildWelcome (String username) {
  return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       const Text(
           'Hello',
         style: TextStyle(
           fontSize: 16, color: Colors.white,
         ),
       ),
       Text(
         username,
         style: const TextStyle(
           fontSize: 24,
           fontWeight: FontWeight.bold,
           color: Colors.white,
         ),
       ),
     ],
   );
 }