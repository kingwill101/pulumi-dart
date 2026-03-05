// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionPolicyZoneConfigurationResponseComputeV1 {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final pulumi.Input<String> zone;

  /// Creates a new [DistributionPolicyZoneConfigurationResponseComputeV1].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  DistributionPolicyZoneConfigurationResponseComputeV1({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zone': zone,
    };
  }

  factory DistributionPolicyZoneConfigurationResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyZoneConfigurationResponseComputeV1(
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

