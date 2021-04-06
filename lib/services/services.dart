//> List of library that used by services
import 'dart:convert';

//> List of package that used by services
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;

import 'package:myproject_flutix/models/models.dart';
import 'package:myproject_flutix/extensions/extensions.dart';
import 'package:myproject_flutix/shared/shared.dart';

//> List of services
part 'auth_services.dart';
part 'user_services.dart';
part 'movie_services.dart';
part 'ticket_services.dart';
part 'transaction_services.dart';
