class Channel {
  Channel({
    required this.id,
    required this.channelName,
    required this.logo,
    required this.pricePerLetter,
    required this.discounts,
  });

  final int id;
  final String channelName;
  final String logo;
  final double pricePerLetter;
  final List<Discount> discounts;

  factory Channel.fromJson(json) => Channel(
        id: json["id"],
        channelName: json["channelName"],
        logo: json["logo"],
        pricePerLetter: json["pricePerLetter"],
        discounts: List<Discount>.from(
            json["discounts"].map((x) => Discount.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "channelName": channelName,
        "logo": logo,
        "pricePerLetter": pricePerLetter,
        "discounts": List<dynamic>.from(discounts.map((x) => x.toJson())),
      };
}

class Discount {
  Discount({
    required this.discount,
    required this.fromDaysCount,
  });

  final int discount;
  final int fromDaysCount;

  factory Discount.fromJson(Map<String, dynamic> json) => Discount(
        discount: json["discount"],
        fromDaysCount: json["fromDaysCount"],
      );

  Map<String, dynamic> toJson() => {
        "discount": discount,
        "fromDaysCount": fromDaysCount,
      };
}
