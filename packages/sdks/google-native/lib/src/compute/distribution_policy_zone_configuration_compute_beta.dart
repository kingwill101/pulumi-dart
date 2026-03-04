// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionPolicyZoneConfigurationComputeBeta {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [DistributionPolicyZoneConfigurationComputeBeta].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  DistributionPolicyZoneConfigurationComputeBeta({this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'zone': ?zone};
  }

  factory DistributionPolicyZoneConfigurationComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionPolicyZoneConfigurationComputeBeta(
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
