//> List of library that used by pages
import 'dart:io';

//> List of package that used by pages
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:random_string/random_string.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:path/path.dart';

import 'package:myproject_flutix/bloc/blocs.dart';
import 'package:myproject_flutix/models/models.dart';
import 'package:myproject_flutix/services/services.dart';
import 'package:myproject_flutix/shared/shared.dart';
import 'package:myproject_flutix/ui/widgets/widgets.dart';
import 'package:myproject_flutix/extensions/extensions.dart';

//> List of pages
part 'main_page.dart';
part 'sign_in_page.dart';
part 'wrapper.dart';
part 'splash_page.dart';
part 'movie_page.dart';
part 'sign_up_page.dart';
part 'preference_page.dart';
part 'account_confirmation_page.dart';
part 'movie_detail_page.dart';
part 'select_schedule_page.dart';
part 'select_seat_page.dart';
part 'checkout_page.dart';
part 'success_page.dart';
part 'ticket_page.dart';
part 'ticket_detail_page.dart';
part 'profile_page.dart';
part 'topup_page.dart';
part 'wallet_page.dart';
part 'edit_profile_page.dart';
