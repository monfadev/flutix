import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myproject_flutix/bloc/blocs.dart';
import 'package:myproject_flutix/services/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/pages/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      //> ROOT
      child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => PageBloc(),
            ),
            BlocProvider(
              create: (_) => UserBloc(),
            ),
            BlocProvider(
              create: (_) => ThemeBloc(),
            ),
            BlocProvider(
              create: (_) => MovieBloc()..add(FetchMovies()),
            ),
            BlocProvider(create: (_) => TicketBloc()),
          ],
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (_, themeState) => MaterialApp(
              theme: themeState.themeData,
              debugShowCheckedModeBanner: false,
              home: Wrapper(),
            ),
          )),
    );
  }
}
