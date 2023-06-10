import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:musically_street/ui/pages/login.dart';
import 'package:musically_street/ui/pages/register.dart';
import 'package:musically_street/ui/pages/start.dart';
import 'firebase_options.dart';

import 'package:musically_street/ui/pages/listeners/musicant_detail.dart';
import 'package:musically_street/ui/pages/listeners/performance_detail.dart';
import 'package:musically_street/ui/pages/musicants/booking.dart';
import 'package:musically_street/ui/pages/musicants/profile.dart';

// Указать авторство иконки 

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MusicantDetail());
}


