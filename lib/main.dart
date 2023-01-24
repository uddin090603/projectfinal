import 'package:flutter/material.dart';
import 'package:tugas/dashboard.dart';
import 'package:tugas/login.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: const WelcomePage()
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      
      backgroundColor: Colors.amber,
      body: Container(
        decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,)
        ),
        padding: const EdgeInsets.only(left: 23, right: 23, top: 86, bottom: 86),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('SMART', style: TextStyle(fontSize: 33, color: Colors.white,),),
            
          ],
        ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text('HOME', style: TextStyle(fontSize: 82, color: Colors.white,),),
              ],
            ),
            const SizedBox(height: 183,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text('Selamat Datang', style: TextStyle(fontSize: 45, color: Colors.white,),),
              ],
            ),
          const SizedBox(height: 100,),
          Material(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              splashColor: Colors.white,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage(),));
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashboardPage(),));
              },
              child: Container(padding: EdgeInsets.symmetric(vertical: 12, horizontal: 60,), child: Text('Mulai', style: TextStyle(color: Colors.white, fontSize: 45),)),
            ),
          )
      ],
        ),
      )
     );
  }
}
