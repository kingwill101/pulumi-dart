// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterZoneDistributionConfig {
  /// (Output)
  /// The exact list of zones where the cluster currently has active VMs.
  final pulumi.Input<List<String>?>? activeZones;
  /// Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// If not provided, MULTI_ZONE will be used as default
  /// Possible values are: `MULTI_ZONE`, `SINGLE_ZONE`.
  final pulumi.Input<String?>? mode;
  /// Immutable. The zone for single zone Memorystore Redis cluster.
  final pulumi.Input<String?>? zone;
  /// Specify the zones of a multi-zone cluster where Redis Cluster
  /// allocates resources. This flag isn't applicable for single-zone clusters.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [ClusterZoneDistributionConfig].
  /// [activeZones] (Output)
  /// [mode] Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// [zone] Immutable. The zone for single zone Memorystore Redis cluster.
  /// [zones] Specify the zones of a multi-zone cluster where Redis Cluster
  const ClusterZoneDistributionConfig({
    this.activeZones,
    this.mode,
    this.zone,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeZones': ?activeZones,
      'mode': ?mode,
      'zone': ?zone,
      'zones': ?zones,
    };
  }

  factory ClusterZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterZoneDistributionConfig(
      activeZones: (() { final guardedValue = map['activeZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
