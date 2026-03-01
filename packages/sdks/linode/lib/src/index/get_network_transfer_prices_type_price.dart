// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkTransferPricesTypePrice {
  /// Cost (in US dollars) per hour.
  final double hourly;
  /// Cost (in US dollars) per month.
  final double monthly;

  /// Creates a new [GetNetworkTransferPricesTypePrice].
  /// [hourly] Cost (in US dollars) per hour.
  /// [monthly] Cost (in US dollars) per month.
  GetNetworkTransferPricesTypePrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetNetworkTransferPricesTypePrice.fromMap(Map<String, dynamic> map) {
    return GetNetworkTransferPricesTypePrice(
      hourly: map['hourly'] as double,
      monthly: map['monthly'] as double,
    );
  }
}

