// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_target_shape_compute_beta.dart';
import 'distribution_policy_zone_configuration_compute_beta.dart';

class DistributionPolicyComputeBeta {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final pulumi.Input<DistributionPolicyTargetShapeComputeBeta>? targetShape;
  /// Zones where the regional managed instance group will create and manage its instances.
  final pulumi.Input<List<DistributionPolicyZoneConfigurationComputeBeta>>? zones;

  /// Creates a new [DistributionPolicyComputeBeta].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  DistributionPolicyComputeBeta({
    this.targetShape,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': ?pulumi.Input.mapOptionalInputValue<DistributionPolicyTargetShapeComputeBeta, String>(targetShape, (value) => value.value),
      'zones': ?pulumi.Input.mapOptionalInputValue<List<DistributionPolicyZoneConfigurationComputeBeta>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<DistributionPolicyZoneConfigurationComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DistributionPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyComputeBeta(
      targetShape: map['targetShape'] == null ? null : (DistributionPolicyTargetShapeComputeBeta.fromValue(map['targetShape']! as String)).input(),
      zones: map['zones'] == null ? null : (pulumi.Input.decodeList<DistributionPolicyZoneConfigurationComputeBeta>(map['zones']!, (value) => DistributionPolicyZoneConfigurationComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

