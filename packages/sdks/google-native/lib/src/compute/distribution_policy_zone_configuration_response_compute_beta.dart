// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionPolicyZoneConfigurationResponseComputeBeta {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final pulumi.Input<String> zone;

  /// Creates a new [DistributionPolicyZoneConfigurationResponseComputeBeta].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  const DistributionPolicyZoneConfigurationResponseComputeBeta({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zone': zone,
    };
  }

  factory DistributionPolicyZoneConfigurationResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyZoneConfigurationResponseComputeBeta(
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

