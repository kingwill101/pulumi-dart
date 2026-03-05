// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesTypeAddonBackupRegionPrice {
  final pulumi.Input<double> hourly;
  /// The ID representing the Linode Type.
  final pulumi.Input<String> id;
  final pulumi.Input<double> monthly;

  /// Creates a new [GetInstanceTypesTypeAddonBackupRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Linode Type.
  /// [monthly] Required.
  GetInstanceTypesTypeAddonBackupRegionPrice({
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

  factory GetInstanceTypesTypeAddonBackupRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeAddonBackupRegionPrice(
      hourly: pulumi.Input.fromValue(map['hourly'] as double),
      id: pulumi.Input.fromValue(map['id'] as String),
      monthly: pulumi.Input.fromValue(map['monthly'] as double),
    );
  }
}

