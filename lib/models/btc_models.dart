class BTCConvertor{

  final double inr;

  BTCConvertor({
    required this.inr,
});

  factory BTCConvertor.fromJson(Map<String, dynamic> json) {
    return BTCConvertor(inr: json["BTC_$currency"]);
  }

}

String currency = "INR";

bool isIOS = true;

late Future<BTCConvertor?> fetchBTCConvertor;

int index = 0;