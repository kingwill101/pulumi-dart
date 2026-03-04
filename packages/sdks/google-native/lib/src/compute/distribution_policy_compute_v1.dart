// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_target_shape_compute_v1.dart';
import 'distribution_policy_zone_configuration_compute_v1.dart';

class DistributionPolicyComputeV1 {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final pulumi.Input<DistributionPolicyTargetShapeComputeV1>? targetShape;

  /// Zones where the regional managed instance group will create and manage its instances.
  final pulumi.Input<List<DistributionPolicyZoneConfigurationComputeV1>>? zones;

  /// Creates a new [DistributionPolicyComputeV1].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  DistributionPolicyComputeV1({this.targetShape, this.zones});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape':
          ?pulumi.Input.mapOptionalInputValue<
            DistributionPolicyTargetShapeComputeV1,
            String
          >(targetShape, (value) => value.wireValue),
      'zones':
          ?pulumi.Input.mapOptionalInputValue<
            List<DistributionPolicyZoneConfigurationComputeV1>,
            List<Map<String, dynamic>>
          >(
            zones,
            (value) =>
                pulumi.Input.encodeList<
                  DistributionPolicyZoneConfigurationComputeV1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DistributionPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyComputeV1(
      targetShape: (() {
        final guardedValue = map['targetShape'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DistributionPolicyTargetShapeComputeV1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DistributionPolicyZoneConfigurationComputeV1>(
            guardedValue,
            (value) => DistributionPolicyZoneConfigurationComputeV1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
