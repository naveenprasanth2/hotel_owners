import 'package:cloud_firestore/cloud_firestore.dart';

class DiscountUpload {
  static void uploadDiscount() {
    const payload = [
      {
        "imageUrl":
            "https://as1.ftcdn.net/v2/jpg/00/98/97/68/1000_F_98976874_2oufUlOChMQ1WwlkNyHkeOAHM6B0cRDV.jpg",
        "couponCode": "YTYTF10",
        "percentage": 10,
        "description":
            "Get up to 10% off using the code YTYTF10. Applicable on selected hotels",
        "shortDescription": "Get up to 10% off"
      },
      {
        "imageUrl":
            "https://as1.ftcdn.net/v2/jpg/00/98/97/68/1000_F_98976874_2oufUlOChMQ1WwlkNyHkeOAHM6B0cRDV.jpg",
        "couponCode": "YTYTF20",
        "percentage": 20,
        "description":
            "Get up to 20% off using the code YTYTF20. Applicable on selected hotels",
        "shortDescription": "Get up to 20% off"
      },
      {
        "imageUrl":
            "https://as1.ftcdn.net/v2/jpg/00/98/97/68/1000_F_98976874_2oufUlOChMQ1WwlkNyHkeOAHM6B0cRDV.jpg",
        "couponCode": "YTYTF30",
        "percentage": 30,
        "description":
            "Get up to 30% off using the code YTYTF30. Applicable on selected hotels",
        "shortDescription": "Get up to 30% off"
      },
      {
        "imageUrl":
            "https://as1.ftcdn.net/v2/jpg/00/98/97/68/1000_F_98976874_2oufUlOChMQ1WwlkNyHkeOAHM6B0cRDV.jpg",
        "couponCode": "YTYTF40",
        "percentage": 40,
        "description":
            "Get up to 40% off using the code YTYTF40. Applicable on selected hotels",
        "shortDescription": "Get up to 40% off"
      }
    ];

    var firebase = FirebaseFirestore.instance.collection("discounts");

    for (var element in payload) {
      firebase
          .doc(element["couponCode"].toString())
          .set({"couponDetails": element});
    }
  }
}
