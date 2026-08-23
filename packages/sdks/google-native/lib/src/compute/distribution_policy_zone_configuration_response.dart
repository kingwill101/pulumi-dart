// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionPolicyZoneConfigurationResponse {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final pulumi.Input<String> zone;

  /// Creates a new [DistributionPolicyZoneConfigurationResponse].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  const DistributionPolicyZoneConfigurationResponse({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zone': zone,
    };
  }

  factory DistributionPolicyZoneConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyZoneConfigurationResponse(
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
