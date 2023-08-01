import 'package:bloc/bloc.dart';
import 'package:emergency/app_cubit/cubit.dart';
import 'package:emergency/app_cubit/states.dart';
import 'package:emergency/login/cubit/login_cubit.dart';
import 'package:emergency/screens/home_screen.dart';
import 'package:emergency/screens/splash_screen.dart';
import 'package:emergency/sign_up/cubit/signUp_cubit.dart';
import 'package:emergency/sign_up/sign_up%20_screen.dart';
import 'package:emergency/screens/vehicle_fuel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observe/bloc.dart';
import 'login/Login_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()..getWinch3Data(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            routes: {
              LoginScreen.routeName: (_) => LoginScreen(),
              SignUpScreen.routeName: (_) => SignUpScreen(),
              HomeScreen.routeName: (_) => HomeScreen(),
              VehivleFuelScreen.routeName: (_) => VehivleFuelScreen(),
            },
          );
        },
      ),
    );
  }
}
