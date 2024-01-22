import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/user.dart';
import 'package:provider_demo/view/home_page.dart';
import 'package:provider_demo/view/detail_page.dart';
import 'package:provider_demo/routes/routes.dart';
import 'package:provider_demo/routes/routes_name.dart';
import 'package:provider_demo/theme/theme.dart';
void main(){
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => User(),)],
      child: MaterialApp.router(
         theme: ThemeData(colorScheme: lightColorScheme , useMaterial3: true, appBarTheme: myAppBar ),
      darkTheme: ThemeData(colorScheme: darkColorScheme, useMaterial3: true, appBarTheme: myAppBar),
      routerConfig: AppRoutes().router,
        // home: HomePage(),
      ),
    );
  }
}