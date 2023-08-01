import 'package:emergency/login/cubit/login_cubit.dart';
import 'package:emergency/screens/vehicle_fuel.dart';
import 'package:emergency/screens/vehivle_transport.dart';
import 'package:flutter/material.dart';

import 'Profile_screen.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ));
                    },
                    child: CircleAvatar(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/925px-Unknown_person.jpg'),
                        radius: 30,
                      ),
                      radius: 30.1,
                      backgroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ));
                      },
                      child: Text(
                        'Mahmoud Abd Elmoniem',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VehivleFuelScreen(),
                          ));
                    },
                    child: Text(
                      'Gas Station',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/image/gasstation.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VehivleTransportScreen(),
                            ));
                      },
                      child: Text(
                        'Winsh',
                        style: TextStyle(color: Colors.white,
                            fontSize: 25),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/image/winsh.png',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'ATM',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),

                  OutlinedButton(onPressed: (){},
                      child: Text('Location',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontSize: 20
                        ),)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/image/atm.jpg'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Hospital',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),

                  OutlinedButton(onPressed: (){},
                      child: Text('Location',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontSize: 20
                        ),)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/image/hospital.jpg'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Car Services',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),

                  OutlinedButton(onPressed: (){},
                      child: Text('Location',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontSize: 20
                        ),)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/image/car.jpg'),
          ],
        ),
      ),
    );
  }
}
