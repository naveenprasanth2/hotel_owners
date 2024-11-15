import 'package:cloud_firestore/cloud_firestore.dart';

class DetailsUpload {
  static void uploadDetailsIntoFirebase() {
    const payload = {
      "hotelName": "MPlaza Hotel",
      "doorNumber": "Plot No 22",
      "streetNumber": "2nd Cross, Parapana Agrahara",
      "cityAndState": "bangalore, karnataka",
      "id": "BANMA1274",
      "mainImage":
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
      "hotelImages": {
        "room": [
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec="
        ],
        "others": [
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU="
        ],
        "washroom": [
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg=",
          "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU="
        ],
        "lobby": [
          "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
          "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k="
        ],
        "reception": [
          "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec="
        ],
        "facade": [
          "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
          "https://media.istockphoto.com/id/179082342/photo/swimming-pool-at-the-luxury-hotel-peloponnes-greece.jpg?s=1024x1024&w=is&k=20&c=UVAPoGmuXlz78sHE9l6FMsbniPp7mbVdeVyvETD83Eg="
        ]
      },
      "locationDetails": {
        "hotelLocationDetails": {
          "name": "ITC Grand Chola",
          "address":
              "63, Anna Salai, Little Mount, Guindy, Chennai, Tamil Nadu 600032",
          "lat": 13.010771169097396,
          "lng": 80.22056993747232
        },
        "transport": [
          {
            "name": "Chennai Central Railway Station",
            "address": "Park Town, Chennai, Tamil Nadu",
            "lat": 13.0836,
            "lng": 80.2785
          },
          {
            "name": "Chennai International Airport",
            "address": "Meenambakkam, Chennai, Tamil Nadu",
            "lat": 12.9817,
            "lng": 80.1633
          },
          {
            "name": "Chennai Egmore Railway Station",
            "address": "Egmore, Chennai, Tamil Nadu",
            "lat": 13.0826,
            "lng": 80.2740
          },
          {
            "name": "Chennai Mofussil Bus Terminus",
            "address": "Koyambedu, Chennai, Tamil Nadu",
            "lat": 13.0745,
            "lng": 80.1831
          },
          {
            "name": "Chennai Metro",
            "address": "Various Locations, Chennai, Tamil Nadu",
            "lat": 13.0674,
            "lng": 80.2376
          }
        ],
        "mallsAndRestaurants": [
          {
            "name": "Phoenix MarketCity",
            "address":
                "Velachery Main Rd, Indira Gandhi Nagar, Chennai, Tamil Nadu",
            "lat": 12.9959,
            "lng": 80.2205
          },
          {
            "name": "Express Avenue Mall",
            "address": "Royapettah, Chennai, Tamil Nadu",
            "lat": 13.0614,
            "lng": 80.2640
          },
          {
            "name": "Forum Vijaya Mall",
            "address": "Vadapalani, Chennai, Tamil Nadu",
            "lat": 13.0523,
            "lng": 80.2129
          },
          {
            "name": "VR Chennai",
            "address": "Anna Nagar, Chennai, Tamil Nadu",
            "lat": 13.0893,
            "lng": 80.2111
          },
          {
            "name": "Ampa Skywalk",
            "address": "Aminjikarai, Chennai, Tamil Nadu",
            "lat": 13.0729,
            "lng": 80.2252
          }
        ],
        "popularPlaces": [
          {
            "name": "Marina Beach",
            "address": "Marina Beach, Chennai, Tamil Nadu",
            "lat": 13.0496,
            "lng": 80.2825
          },
          {
            "name": "Kapaleeshwarar Temple",
            "address": "Mylapore, Chennai, Tamil Nadu",
            "lat": 13.0337,
            "lng": 80.2695
          },
          {
            "name": "Government Museum",
            "address": "Egmore, Chennai, Tamil Nadu",
            "lat": 13.0826,
            "lng": 80.2772
          },
          {
            "name": "Guindy National Park",
            "address": "Guindy, Chennai, Tamil Nadu",
            "lat": 13.0105,
            "lng": 80.2200
          },
          {
            "name": "Besant Nagar Beach",
            "address": "Besant Nagar, Chennai, Tamil Nadu",
            "lat": 13.0055,
            "lng": 80.2703
          }
        ],
        "others": [
          {
            "name": "VGP Universal Kingdom",
            "address": "East Coast Road, Injambakkam, Chennai, Tamil Nadu",
            "lat": 12.8815,
            "lng": 80.2508
          },
          {
            "name": "Semmozhi Poonga",
            "address": "Thiruvallikeni, Chennai, Tamil Nadu",
            "lat": 13.0485,
            "lng": 80.2706
          },
          {
            "name": "Arignar Anna Zoological Park",
            "address": "Vandalur, Chennai, Tamil Nadu",
            "lat": 12.8913,
            "lng": 80.0811
          },
          {
            "name": "Fort St. George",
            "address": "Rajaji Salai, Chennai, Tamil Nadu",
            "lat": 13.0789,
            "lng": 80.2870
          },
          {
            "name": "St. Thomas Mount",
            "address": "Saidapet, Chennai, Tamil Nadu",
            "lat": 13.0114,
            "lng": 80.2102
          }
        ]
      },
      "highlights": ["Free Breakfast", "Free Cancellation", "Pay at hotel"],
      "aboutHotel": {
        "Description":
            "OYO 6790 Hotel subha Residency is a budget hotel in Bangalore with standardised amenities at the best value. The hotel is conveniently located just 4 km from Lalbagh Botanical Garden and 3 km from Cubbon Park. OYO 6790 Hotel offers everything you need for a comfortable stay; CCTV Cameras, Breakfast and Power backup.",
        "Special Features":
            "While you are out exploring the city, this hotel room will be your home away from home. Our rooms include amenities such as Free Wifi and Geyser.",
        "Location & Transportation":
            "The accommodation is stationed at a distance of 6 km from ISKCON Temple Bangalore, 6 km from Bangalore Palace and 23 km from Bannerghatta Biological Park. Guests will be just 2 km from Bangalore City Railway Station. The hotel is 35 km away from Kempegowda International Airport. \nOYO 6790 Hotel subha Residency has been delighting guests since 27 Mar 2021. \nDistance in property description is calculated using © OpenStreetMap"
      },
      "discountsApplicable": [5, 20, 35],
      "roomType": [
        {
          "type": "standard",
          "images": [
            "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
            "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
            "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec="
          ],
          "size": 130,
          "maxPeopleAllowed": 3,
          "price": 2500,
          "discountedPrice": 2200
        },
        {
          "type": "deluxe",
          "images": [
            "https://media.istockphoto.com/id/482367041/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=-io2u3x82WO9SXAj1obTFnLDIqPOkRVpPTGyGbsi6Uc=",
            "https://media.istockphoto.com/id/177289466/photo/swimming-pool.jpg?s=1024x1024&w=is&k=20&c=qvliI9r-123BQ79vybLR16jUbmQV5_rsq4WGCaepptU=",
            "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=uzDy4YWgDC1bx7I6V7z4X8jRuIS3GUyF5w2euvucBwA=",
            "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=1024x1024&w=is&k=20&c=lNQVwTuYzo9wQZfZzHioQMCJRTHWVzhX1UXmcqgnF5k=",
            "https://media.istockphoto.com/id/172455485/photo/resort-and-swimming-pool.jpg?s=1024x1024&w=is&k=20&c=zojwwtIL4aigQI1VU6ps_B0pzc-EuXNE5lsnKf9N_Ec="
          ],
          "size": 190,
          "maxPeopleAllowed": 4,
          "price": 4400,
          "discountedPrice": 4000
        }
      ],
      "amenities": {
        "bedTypeModel": {
          "cot": true,
          "kingSizedBed": true,
          "queenSizedBed": false,
          "singleBed": false
        },
        "mediaTechnologyModel": {"tv": true, "ott": false},
        "hotelFacilitiesModel": {
          "ac": true,
          "wifi": false,
          "kitchen": true,
          "restaurant": true,
          "reception": false,
          "careTaker": true,
          "security": true,
          "shuttleService": true,
          "luggageAssistance": true,
          "taxi": true,
          "dailyHousekeeping": true,
          "fireExtinguisher": true,
          "firstAidKit": true
        },
        "washroomModel": {"geyser": true},
        "roomFacilityModel": {
          "extraMattress": true,
          "smokeDetector": true,
          "interCom": true,
          "books": true
        },
        "seatingAreaModel": {"seatingArea": false}
      },
      "guestPolicies": [
        {
          "title": "Couple Friendly",
          "description":
              "Treebo Trend Rishan Suites welcomes unmarried couples."
        },
        {
          "title": "Local ID Policy",
          "description":
              "Guests can check in using any local or outstation ID proof (PAN card not accepted)."
        },
        {
          "title": "Check-in and Check-out",
          "description": "Check-in: 12:00 pm Check-out: 11:00 am"
        },
        {
          "title": "Cancellation Policy",
          "description":
              "No cancellation fee is charged if the booking is cancelled 24 hours prior to the standard check-in time. If the booking is cancelled within 24 hours of the standard check-in time for your booking, one night’s tariff shall be charged for the room(s) booked. Please note that refunds shall not be applicable for non-refundable bookings"
        },
        {
          "title": "Bulk Booking Policy",
          "description":
              "Any booking for more than and equal to 3 rooms is considered to be a group/bulk booking irrespective of its room nights. Every Group who wants to make a reservation at Treebo Hotels has to make a deposit of 50% of the total amount to confirm the booking as per the timelines below. No charges will be levied if a booking is canceled at least 7 days prior to check-in day. Any cancellation request made within 7 days prior to check-in time, will attract charges equivalent to 50% of the booking which will be deducted as a Standard Cancellation fee. In case of a no-show (guest not arriving), Treebo reserves the right to charge an equivalent of 50% of booking stay charges including taxes."
        },
        {
          "title": "GST Details",
          "description":
              "Addition of GST details or any kind of modification on the invoice cannot be made post check-out. Hence, please add all the required details with accuracy while making the booking itself."
        },
        {
          "title": "Child Reservation Policy",
          "description":
              "A maximum of 1 child upto an age of 8 years and an extra infant upto an age of 2 years is allowed free of charge, subject to room occupancy capacity. Breakfast will be included in stay but no extra bed or mattress will be provided. Extra person charges are applicable for anyone above 8 years of age. Extra person charges are also applicable for extra kids during check-in."
        },
        {
          "title": "Identification Card",
          "description":
              "All adults must carry one of these photo ID cards at the time of check-in: Driving License, Voters Card, Passport, Ration Card or Aadhar Card. PAN Cards are not accepted."
        },
        {
          "title": "Early Check-In Policy",
          "description":
              "Early check-in only after 10 AM is possible but can be confirmed, subject to availability upon arrival at the hotel and not in advance. For check-in prior to 10 AM, an extra half day\"s tariff shall be applicable."
        },
        {
          "title": "Late Check-Out Policy",
          "description":
              "Late check-out between 11 am and 1 pm is possible (free of charge) but can be confirmed, subject to availability, only at the time of check-out and not in advance. For check-out after 1 PM, an extra night\"s tariff shall be applicable."
        },
        {
          "title": "PAH Booking Payment",
          "description":
              "The full booking amount needs to be paid at the time of check-in. If part-payment was made for the booking, the remainder of the booking amount is what needs to be paid at the time of check-in."
        },
        {
          "title": "Restaurant on-site",
          "description":
              "A restaurant is not available on premise in this hotel"
        },
        {
          "title": "Access to Bar, Restaurant and Swimming Pool",
          "description":
              "Restaurant, bar & swimming pool will be accessible to the guests subject to government approval (If available in the property)"
        },
        {
          "title": "Covid-19_Outbreak",
          "description":
              "Due to Covid-19 outbreak, we urge you to stay tuned to latest updates by Local and Central Government w.r.t Covid tests, lockdowns, and travel restrictions before confirming your Hotel Booking"
        }
      ]
    };

    FirebaseFirestore.instance
        .collection("tamilnadu")
        .doc("chennai")
        .collection("hotels")
        .doc(payload["id"].toString())
        .collection("details")
        .doc(payload["id"].toString())
        .set({"details": payload});
  }
}
