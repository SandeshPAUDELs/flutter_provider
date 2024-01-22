import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_demo/routes/routes_name.dart';
import 'package:provider_demo/view/home_page.dart';
import 'package:provider_demo/view/detail_page.dart';
import 'package:provider_demo/view/third.dart';

class AppRoutes {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RouteName.first,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(path: RouteName.second + '/:index',
      builder:(context, state) => DetailsPage(index: 
      int.parse(state.pathParameters['index']!),
      ),)
      
      
      
    ],
  );
}
