import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({Key? key, required String Options}) : super(key: key);

  String get option => 'Option';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48 ,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.purple,
            )
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(option,style: const TextStyle(fontWeight: FontWeight.bold)),
                      Radio(
                        value: option,
                        groupValue: 2,
                        onChanged: (value){},
                      ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
