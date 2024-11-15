import 'package:cloud_firestore/cloud_firestore.dart';

class OverView {
  static void uploadDataIntoFireBase() {
    const payload = [
      {
        "hotelImages": [
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg="
        ],
        "hotelLocationDetails": {
          "name": "ITC Grand Chola",
          "address": "63, Anna Salai, Little Mount, Guindy, Chennai, Tamil Nadu 600032",
          "lat": 13.010771169097396,
          "lng": 80.22056993747232
        },
        "highlights": [
          "Free Breakfast",
          "Free Cancellation",
          "Pay at hotel"
        ],
        "hotelId": "TNCHE1111",
        "ratings": {
          "averageRating": 3.5,
          "oneStarRatingsCount": 5,
          "twoStarRatingsCount": 7,
          "threeStarRatingsCount": 8,
          "fourStarRatingsCount": 4,
          "fiveStarRatingsCount": 9,
          "noOfRatings": 30
        },
        "roomTypeForSearch": [
          {
            "type": "standard",
            "size": 130,
            "maxPeopleAllowed": 3,
            "price": 2500,
            "discountedPrice": 1799
          },
          {
            "type": "deluxe",
            "size": 190,
            "maxPeopleAllowed": 4,
            "price": 4400,
            "discountedPrice": 3500
          }
        ],
        "hotelContactDetails": {
          "phone": "+911234567890",
          "mailId": "test@test.com"
        },
        "cityAndState": "chennai, tamilnadu"
      },
      {
        "hotelImages": [
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg="
        ],
        "hotelLocationDetails": {
          "name": "Hotel Jyothi",
          "address": "73, Anna Salai, Little Mount, Guindy, Chennai, Tamil Nadu 600032",
          "lat": 13.010771169097396,
          "lng": 80.22056993747232
        },
        "highlights": [
          "Free Breakfast",
          "Couple Friendly",
          "Pay at hotel"
        ],
        "hotelId": "TNCHE1112",
        "ratings": {
          "averageRating": 3.5,
          "oneStarRatingsCount": 5,
          "twoStarRatingsCount": 7,
          "threeStarRatingsCount": 8,
          "fourStarRatingsCount": 4,
          "fiveStarRatingsCount": 9,
          "noOfRatings": 30
        },
        "roomTypeForSearch": [
          {
            "type": "standard",
            "size": 150,
            "maxPeopleAllowed": 3,
            "price": 2300,
            "discountedPrice": 1299
          },
          {
            "type": "deluxe",
            "size": 290,
            "maxPeopleAllowed": 3,
            "price": 4200,
            "discountedPrice": 3700
          }
        ],
        "hotelContactDetails": {
          "phone": "+911234567890",
          "mailId": "test@test.com"
        },
        "cityAndState": "chennai, tamilnadu"
      },
      {
        "hotelImages": [
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg="
        ],
        "hotelLocationDetails": {
          "name": "Hotel Jyothi",
          "address": "73, Anna Salai, Little Mount, Guindy, Chennai, Tamil Nadu 600032",
          "lat": 13.010771169097396,
          "lng": 80.22056993747232
        },
        "highlights": [
          "Free Breakfast",
          "Local Id Allowed",
          "Pay at hotel"
        ],
        "hotelId": "TNCHE1113",
        "ratings": {
          "averageRating": 3.5,
          "oneStarRatingsCount": 5,
          "twoStarRatingsCount": 7,
          "threeStarRatingsCount": 8,
          "fourStarRatingsCount": 4,
          "fiveStarRatingsCount": 9,
          "noOfRatings": 30
        },
        "roomTypeForSearch": [
          {
            "type": "standard",
            "size": 120,
            "maxPeopleAllowed": 3,
            "price": 2900,
            "discountedPrice": 1999
          },
          {
            "type": "deluxe",
            "size": 290,
            "maxPeopleAllowed": 4,
            "price": 4200,
            "discountedPrice": 3900
          }
        ],
        "hotelContactDetails": {
          "phone": "+911234567890",
          "mailId": "test@test.com"
        },
        "cityAndState": "chennai, tamilnadu"
      },
      {
        "hotelImages": [
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec=",
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg="
        ],
        "hotelLocationDetails": {
          "name": "Seasons Hotel",
          "address": "73, Anna Salai, Little Mount, Guindy, Chennai, Tamil Nadu 600032",
          "lat": 13.010771169097396,
          "lng": 80.22056993747232
        },
        "highlights": [
          "Couple Friendly",
          "Free Cancellation",
          "Pay at hotel"
        ],
        "hotelId": "TNCHE1114",
        "ratings": {
          "averageRating": 3.5,
          "oneStarRatingsCount": 5,
          "twoStarRatingsCount": 7,
          "threeStarRatingsCount": 8,
          "fourStarRatingsCount": 4,
          "fiveStarRatingsCount": 9,
          "noOfRatings": 30
        },
        "roomTypeForSearch": [
          {
            "type": "standard",
            "size": 230,
            "maxPeopleAllowed": 3,
            "price": 3000,
            "discountedPrice": 1799
          },
          {
            "type": "deluxe",
            "size": 490,
            "maxPeopleAllowed": 4,
            "price": 3500,
            "discountedPrice": 3500
          }
        ],
        "hotelContactDetails": {
          "phone": "+911234567890",
          "mailId": "test@test.com"
        },
        "cityAndState": "chennai, tamilnadu"
      }
    ];
    var firebase = FirebaseFirestore.instance
        .collection("tamilnadu")
        .doc("chennai")
        .collection("hotels");

    for (var element in payload) {
      firebase
          .doc(element["hotelId"].toString())
          .set({element["hotelId"].toString(): element});
    }
  }
}
