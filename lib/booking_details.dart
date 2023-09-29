import 'package:cloud_firestore/cloud_firestore.dart';

class BookingDetails{
  static uploadBookingDetails(){
    const payload = [
      {
        "hotelId": "TNCHE1111",
        "cityAndState": "Chennai, TamilNadu",
        "roomsCount": 2,
        "guestsCount": 1,
        "checkInDate": "12-Jul",
        "checkInTime": "12:00PM",
        "checkOutDate": "13-Jul",
        "checkOutTime": "11:00AM",
        "bookingId": "dummy1",
        "checkOutStatus": "booked",
        "rated": false,
        "reservedFor": "Naveen Prasanth",
        "amountPaid": 1203,
        "discount": 10,
        "discountCoupon": "TYGYV50"
      },
      {
        "hotelId": "TNCHE1112",
        "cityAndState": "Chennai, TamilNadu",
        "roomsCount": 2,
        "guestsCount": 1,
        "checkInDate": "12-Jul",
        "checkInTime": "12:00PM",
        "checkOutDate": "13-Jul",
        "checkOutTime": "11:00AM",
        "bookingId": "dummy2",
        "checkOutStatus": "booked",
        "rated": false,
        "reservedFor": "Naveen Prasanth",
        "amountPaid": 1203,
        "discount": 10,
        "discountCoupon": "TYGYV50"
      },
      {
        "hotelId": "TNCHE1113",
        "cityAndState": "Chennai, TamilNadu",
        "roomsCount": 2,
        "guestsCount": 1,
        "checkInDate": "12-Jul",
        "checkInTime": "12:00PM",
        "checkOutDate": "13-Jul",
        "checkOutTime": "11:00AM",
        "bookingId": "dummy3",
        "checkOutStatus": "cancelled",
        "rated": false,
        "reservedFor": "Naveen Prasanth",
        "amountPaid": 1203,
        "discount": 10,
        "discountCoupon": "TYGYV50"
      },
      {
        "hotelId": "TNCHE1114",
        "cityAndState": "Chennai, TamilNadu",
        "roomsCount": 2,
        "guestsCount": 1,
        "checkInDate": "12-Jul",
        "checkInTime": "12:00PM",
        "checkOutDate": "13-Jul",
        "checkOutTime": "11:00AM",
        "bookingId": "dummy4",
        "checkOutStatus": "checkedOut",
        "rated": false,
        "reservedFor": "Naveen Prasanth",
        "amountPaid": 1203,
        "discount": 10,
        "discountCoupon": "TYGYV50"
      },
      {
        "hotelId": "TNCHE1111",
        "cityAndState": "Chennai, TamilNadu",
        "roomsCount": 2,
        "guestsCount": 1,
        "checkInDate": "12-Jul",
        "checkInTime": "12:00PM",
        "checkOutDate": "13-Jul",
        "checkOutTime": "11:00AM",
        "bookingId": "dummy5",
        "checkOutStatus": "cancelled",
        "rated": false,
        "reservedFor": "Naveen Prasanth",
        "amountPaid": 1203,
        "discount": 10,
        "discountCoupon": "TYGYV50"
      },
      {
        "hotelId": "TNCHE1112",
        "cityAndState": "Chennai, TamilNadu",
        "roomsCount": 2,
        "guestsCount": 1,
        "checkInDate": "12-Jul",
        "checkInTime": "12:00PM",
        "checkOutDate": "13-Jul",
        "checkOutTime": "11:00AM",
        "bookingId": "dummy6",
        "checkOutStatus": "cancelled",
        "rated": false,
        "reservedFor": "Naveen Prasanth",
        "amountPaid": 1203,
        "discount": 10,
        "discountCoupon": "TYGYV50"
      }
    ];


   var firebase = FirebaseFirestore.instance
        .collection("users")
        .doc("dummy")
        .collection("bookings");

    for (var element in payload) {
      firebase.doc(element["bookingId"].toString()).set({
        element["bookingId"].toString(): element
      });
    }

  }
}