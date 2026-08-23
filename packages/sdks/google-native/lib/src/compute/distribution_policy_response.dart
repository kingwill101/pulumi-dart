// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_zone_configuration_response.dart';

class DistributionPolicyResponse {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final pulumi.Input<String> targetShape;
  /// Zones where the regional managed instance group will create and manage its instances.
  final pulumi.Input<List<DistributionPolicyZoneConfigurationResponse>> zones;

  /// Creates a new [DistributionPolicyResponse].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  const DistributionPolicyResponse({
    required this.targetShape,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': targetShape,
      'zones': pulumi.Input.mapInputValue<List<DistributionPolicyZoneConfigurationResponse>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<DistributionPolicyZoneConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DistributionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyResponse(
      targetShape: pulumi.Input.fromValue(map['targetShape'] as String),
      zones: pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionPolicyZoneConfigurationResponse>(map['zones']!, (value) => DistributionPolicyZoneConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
