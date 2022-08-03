import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch=false;
  bool? isCheckBox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        //removing back arrow
        automaticallyImplyLeading: false,

        //as adding ur own leading
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_ios)),

        actions: [ IconButton(onPressed: (){}, icon: const Icon(Icons.info))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/image1.jpeg"),
            const SizedBox(height: 10,),
            const Divider(color: Colors.black,
            ),
            Container(
              margin:  const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(child:
              Text('Learning Flutter is FUN', style: TextStyle(color: Colors.white),)),
            ),
            //elevated button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
                onPressed: (){
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevetad Button')),
            OutlinedButton(
                onPressed: (){
                  debugPrint('Outlined Button');
                },
                child: const Text('Outlined Button')),
            TextButton(
                onPressed: (){
                  debugPrint('Text Button');
                },
                child: const Text('Text Button')),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                debugPrint('this is the low');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(

                    Icons.local_fire_department,
                  color: Colors.blue,),
                  Text('Row widget'),

                  Icon(
                    Icons.local_fire_department,
                  color: Colors.blue,)
                ],


              ),
            ) ,
            //switch widgets
            Switch(value: isSwitch, onChanged: (bool newBool){
              setState((){
                isSwitch=newBool;

              });
            }),
            Checkbox(value: isCheckBox, onChanged: (bool? newBool){
              setState((){
                isCheckBox=newBool;

              });
            }

            )



          ],
        ),
      ),

    );
  }
}
