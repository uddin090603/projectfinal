import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 34,),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,)
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
               Text('My House', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),),
              Icon(Icons.menu, color: Colors.white, size: 24,),            
            ],
          ),
          const SizedBox(height: 32,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('18^C', style: TextStyle(fontSize: 25, color: Colors.white) , ),
                      Text('Avg House Temp', style: TextStyle(fontSize: 16, color: Colors.white),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('31^C', style: TextStyle(fontSize: 25, color: Colors.white),),
                      Text('Outside Temp', style: TextStyle(fontSize: 16, color: Colors.white),),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16,),
              Divider(color: Colors.white, thickness: 1,),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('46%', style: TextStyle(fontSize: 25, color: Colors.white),),
                      Text('Humidity', style: TextStyle(fontSize: 16, color: Colors.white),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('1', style: TextStyle(fontSize: 25, color: Colors.white),),
                      Text('Active Device', style: TextStyle(fontSize: 16, color: Colors.white),),
                    ],
                  )
                ],
              )

            ],
          ),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children : const [
            Text('Room', style: TextStyle(fontSize:21, color: Colors.white ),)
          ],
        ),
        Container(
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal:32, vertical: 18 ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.amber,
          ),
          child: Center(
            child: Text('Living Room', style: TextStyle(fontSize: 18, color: Colors.white),),
          ),
        )
        ],),
      ),
    );
  }
}