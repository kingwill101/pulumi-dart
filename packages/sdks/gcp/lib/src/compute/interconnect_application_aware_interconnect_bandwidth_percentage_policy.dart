// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_application_aware_interconnect_bandwidth_percentage_policy_bandwidth_percentage.dart';

class InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy {
  /// (Optional, Beta)
  /// Specify bandwidth percentages for various traffic classes for queuing
  /// type Bandwidth Percent.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage>?>? bandwidthPercentages;

  /// Creates a new [InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy].
  /// [bandwidthPercentages] (Optional, Beta)
  const InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy({
    this.bandwidthPercentages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthPercentages': ?pulumi.Input.mapOptionalInputValue<List<InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage>, List<Map<String, dynamic>>>(bandwidthPercentages, (value) => pulumi.Input.encodeList<InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy.fromMap(Map<String, dynamic> map) {
    return InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy(
      bandwidthPercentages: (() { final guardedValue = map['bandwidthPercentages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage>(guardedValue, (value) => InterconnectApplicationAwareInterconnectBandwidthPercentagePolicyBandwidthPercentage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
