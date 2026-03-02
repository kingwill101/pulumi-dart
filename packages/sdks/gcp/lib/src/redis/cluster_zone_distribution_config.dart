// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterZoneDistributionConfig {
  /// Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// If not provided, MULTI_ZONE will be used as default
  /// Possible values are: `MULTI_ZONE`, `SINGLE_ZONE`.
  final pulumi.Input<String>? mode;
  /// Immutable. The zone for single zone Memorystore Redis cluster.
  final pulumi.Input<String>? zone;

  /// Creates a new [ClusterZoneDistributionConfig].
  /// [mode] Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// [zone] Immutable. The zone for single zone Memorystore Redis cluster.
  ClusterZoneDistributionConfig({
    this.mode,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'zone': ?zone,
    };
  }

  factory ClusterZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterZoneDistributionConfig(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

