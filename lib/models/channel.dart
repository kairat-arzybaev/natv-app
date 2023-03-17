class Channel {
  int? channelId;
  String? channelName;
  String? logoPath;
  bool? active;
  Price? price;
  List<Discounts>? discounts;

  Channel(
      {this.channelId,
      this.channelName,
      this.logoPath,
      this.active,
      this.price,
      this.discounts});

  Channel.fromJson(Map<String, dynamic> json) {
    channelId = json['channelId'];
    channelName = json['channelName'];
    logoPath = json['logoPath'];
    active = json['active'];
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
    if (json['discounts'] != null) {
      discounts = <Discounts>[];
      json['discounts'].forEach((v) {
        discounts!.add(Discounts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['channelId'] = channelId;
    data['channelName'] = channelName;
    data['logoPath'] = logoPath;
    data['active'] = active;
    if (price != null) {
      data['price'] = price!.toJson();
    }
    if (discounts != null) {
      data['discounts'] = discounts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Price {
  int? id;
  int? bannerPrice;
  int? pricePerLetter;

  Price({this.id, this.bannerPrice, this.pricePerLetter});

  Price.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bannerPrice = json['bannerPrice'];
    pricePerLetter = json['pricePerLetter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bannerPrice'] = bannerPrice;
    data['pricePerLetter'] = pricePerLetter;
    return data;
  }
}

class Discounts {
  int? id;
  int? discount;
  int? fromDaysCount;

  Discounts({this.id, this.discount, this.fromDaysCount});

  Discounts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discount = json['discount'];
    fromDaysCount = json['fromDaysCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['discount'] = discount;
    data['fromDaysCount'] = fromDaysCount;
    return data;
  }
}
