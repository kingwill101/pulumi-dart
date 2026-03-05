// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfig {
  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final pulumi.Input<List<String>>? podRangeNames;

  /// Creates a new [AdditionalPodRangesConfig].
  /// [podRangeNames] Name for pod secondary ipv4 range which has the actual range defined ahead.
  AdditionalPodRangesConfig({
    this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podRangeNames': ?podRangeNames,
    };
  }

  factory AdditionalPodRangesConfig.fromMap(Map<String, dynamic> map) {
    return AdditionalPodRangesConfig(
      podRangeNames: (() { final guardedValue = map['podRangeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

