// @dart=2.9

import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/Strings.dart';

import 'app_router.dart';
import 'constant/bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

String initialRoute;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  initialRoute = mainSplashScreen;

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({Key key, @required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: initialRoute,
    );
  }
}
