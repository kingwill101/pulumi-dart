// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesTypeRegionPrice {
  final pulumi.Input<double> hourly;
  /// The ID representing the Linode Type.
  final pulumi.Input<String> id;
  final pulumi.Input<double> monthly;

  /// Creates a new [GetInstanceTypesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Linode Type.
  /// [monthly] Required.
  GetInstanceTypesTypeRegionPrice({
    required this.hourly,
    required this.id,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'id': id,
      'monthly': monthly,
    };
  }

  factory GetInstanceTypesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeRegionPrice(
      hourly: (map['hourly'] as double).input(),
      id: (map['id'] as String).input(),
      monthly: (map['monthly'] as double).input(),
    );
  }
}

