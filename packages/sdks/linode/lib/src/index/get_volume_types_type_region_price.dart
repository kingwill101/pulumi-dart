// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeTypesTypeRegionPrice {
  final pulumi.Input<double> hourly;
  /// The ID representing the Volume type.
  final pulumi.Input<String> id;
  final pulumi.Input<double> monthly;

  /// Creates a new [GetVolumeTypesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Volume type.
  /// [monthly] Required.
  GetVolumeTypesTypeRegionPrice({
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

  factory GetVolumeTypesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetVolumeTypesTypeRegionPrice(
      hourly: (map['hourly'] as double).input(),
      id: (map['id'] as String).input(),
      monthly: (map['monthly'] as double).input(),
    );
  }
}

