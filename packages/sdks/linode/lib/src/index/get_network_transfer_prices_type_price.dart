// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkTransferPricesTypePrice {
  /// Cost (in US dollars) per hour.
  final pulumi.Input<double> hourly;
  /// Cost (in US dollars) per month.
  final pulumi.Input<double> monthly;

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
      hourly: pulumi.Input.fromValue(map['hourly'] as double),
      monthly: pulumi.Input.fromValue(map['monthly'] as double),
    );
  }
}

