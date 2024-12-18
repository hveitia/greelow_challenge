import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greelow/modules/home/bloc/home_bloc.dart';

final blocProviders = [
  BlocProvider<HomeBloc>(
    create: (context) => HomeBloc(),
  ),
];