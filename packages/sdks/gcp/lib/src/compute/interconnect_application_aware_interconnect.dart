// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_application_aware_interconnect_bandwidth_percentage_policy.dart';
import 'interconnect_application_aware_interconnect_shape_average_percentage.dart';

class InterconnectApplicationAwareInterconnect {
  /// (Optional, Beta)
  /// Bandwidth Percentage policy allows you to have granular control over how your Interconnect
  /// bandwidth is utilized among your workloads mapping to different traffic classes.
  /// Structure is documented below.
  final pulumi.Input<InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy>? bandwidthPercentagePolicy;
  /// (Optional, Beta)
  /// A description for the AAI profile on this interconnect.
  final pulumi.Input<String>? profileDescription;
  /// (Optional, Beta)
  /// Optional field to specify a list of shape average percentages to be
  /// applied in conjunction with StrictPriorityPolicy or BandwidthPercentagePolicy
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectApplicationAwareInterconnectShapeAveragePercentage>>? shapeAveragePercentages;
  /// (Optional, Beta)
  /// Specify configuration for StrictPriorityPolicy.
  final pulumi.Input<Map<String, dynamic>>? strictPriorityPolicy;

  /// Creates a new [InterconnectApplicationAwareInterconnect].
  /// [bandwidthPercentagePolicy] (Optional, Beta)
  /// [profileDescription] (Optional, Beta)
  /// [shapeAveragePercentages] (Optional, Beta)
  /// [strictPriorityPolicy] (Optional, Beta)
  const InterconnectApplicationAwareInterconnect({
    this.bandwidthPercentagePolicy,
    this.profileDescription,
    this.shapeAveragePercentages,
    this.strictPriorityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPercentagePolicy': ?pulumi.Input.mapOptionalInputValue<InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy, Map<String, dynamic>>(bandwidthPercentagePolicy, (value) => value.toMap()),
      'profileDescription': ?profileDescription,
      'shapeAveragePercentages': ?pulumi.Input.mapOptionalInputValue<List<InterconnectApplicationAwareInterconnectShapeAveragePercentage>, List<Map<String, dynamic>>>(shapeAveragePercentages, (value) => pulumi.Input.encodeList<InterconnectApplicationAwareInterconnectShapeAveragePercentage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'strictPriorityPolicy': ?strictPriorityPolicy,
    };
  }

  factory InterconnectApplicationAwareInterconnect.fromMap(Map<String, dynamic> map) {
    return InterconnectApplicationAwareInterconnect(
      bandwidthPercentagePolicy: (() { final guardedValue = map['bandwidthPercentagePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileDescription: (() { final guardedValue = map['profileDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shapeAveragePercentages: (() { final guardedValue = map['shapeAveragePercentages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectApplicationAwareInterconnectShapeAveragePercentage>(guardedValue, (value) => InterconnectApplicationAwareInterconnectShapeAveragePercentage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      strictPriorityPolicy: (() { final guardedValue = map['strictPriorityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
