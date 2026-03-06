// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_target_shape.dart';
import 'distribution_policy_zone_configuration.dart';

class DistributionPolicy {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final pulumi.Input<DistributionPolicyTargetShape>? targetShape;
  /// Zones where the regional managed instance group will create and manage its instances.
  final pulumi.Input<List<DistributionPolicyZoneConfiguration>>? zones;

  /// Creates a new [DistributionPolicy].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  const DistributionPolicy({
    this.targetShape,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': ?pulumi.Input.mapOptionalInputValue<DistributionPolicyTargetShape, String>(targetShape, (value) => value.wireValue),
      'zones': ?pulumi.Input.mapOptionalInputValue<List<DistributionPolicyZoneConfiguration>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<DistributionPolicyZoneConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DistributionPolicy.fromMap(Map<String, dynamic> map) {
    return DistributionPolicy(
      targetShape: (() { final guardedValue = map['targetShape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionPolicyTargetShape.fromValue(guardedValue as String)); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionPolicyZoneConfiguration>(guardedValue, (value) => DistributionPolicyZoneConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

