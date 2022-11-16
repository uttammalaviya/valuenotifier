import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: first(),
  ));
}

class first extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  ValueNotifier<int> sum = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Valuenotifier"),
      ),
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          ElevatedButton(
              onPressed: () {
                String a = t1.text;
                String b = t2.text;
                sum.value = int.parse(a) + int.parse(b);
              },
              child: Text("sum")),
          ValueListenableBuilder(
            valueListenable: sum,
            builder: (context, total, child) {
              return Text("sum=${total}");
             },
          )
        ],
      ),
    );
  }
}
