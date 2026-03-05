// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesTypeAddonBackupPrice {
  /// The cost (in US dollars) per hour to add Backups service.
  final pulumi.Input<double> hourly;
  /// The cost (in US dollars) per month to add Backups service.
  final pulumi.Input<double> monthly;

  /// Creates a new [GetInstanceTypesTypeAddonBackupPrice].
  /// [hourly] The cost (in US dollars) per hour to add Backups service.
  /// [monthly] The cost (in US dollars) per month to add Backups service.
  GetInstanceTypesTypeAddonBackupPrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetInstanceTypesTypeAddonBackupPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeAddonBackupPrice(
      hourly: pulumi.Input.fromValue(map['hourly'] as double),
      monthly: pulumi.Input.fromValue(map['monthly'] as double),
    );
  }
}

