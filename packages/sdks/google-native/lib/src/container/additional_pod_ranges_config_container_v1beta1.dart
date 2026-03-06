// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfigContainerV1beta1 {
  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final pulumi.Input<List<String>>? podRangeNames;

  /// Creates a new [AdditionalPodRangesConfigContainerV1beta1].
  /// [podRangeNames] Name for pod secondary ipv4 range which has the actual range defined ahead.
  const AdditionalPodRangesConfigContainerV1beta1({
    this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podRangeNames': ?podRangeNames,
    };
  }

  factory AdditionalPodRangesConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdditionalPodRangesConfigContainerV1beta1(
      podRangeNames: (() { final guardedValue = map['podRangeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

