import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotel_owners/booking_details.dart';
import 'package:hotel_owners/details_upload.dart';
import 'package:hotel_owners/discount_upload.dart';
import 'package:hotel_owners/overview_upload.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // OverView.uploadDataIntoFireBase();
  // DetailsUpload.uploadDetailsIntoFirebase();
  // BookingDetails.uploadBookingDetails();
  DiscountUpload.uploadDiscount();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
