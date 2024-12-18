
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greelow/modules/home/presenter/home_view.dart';

import 'configs/bloc_providers.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Greelow',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1B1F22),
          fontFamily: 'Open Sans',
          appBarTheme:  const AppBarTheme(
            elevation: 0,
            backgroundColor: Color(0xff1B1F22),
          ),
        ),
        home:  const HomeView(),
      ),
    );
  }
}