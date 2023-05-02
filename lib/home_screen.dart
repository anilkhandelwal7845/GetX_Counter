import 'package:counter_getx/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Center(
              child: Text(
                controller.counter.toString(),
                style: TextStyle(fontSize: 70.0),
              ),
            );
          }),
          SizedBox(height: 30,) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    controller.incrementCounter();
                  },
                  child: Text('Increment')),
              SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    controller.decrementCounter();
                  },
                  child: Text('Decremrnt'))
            ],
          )
        ],
      ),
    );
  }
}
