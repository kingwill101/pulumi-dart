// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterZoneDistributionConfig {
  /// The exact list of zones where the cluster currently has active VMs.
  final pulumi.Input<List<String>> activeZones;
  /// Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// If not provided, MULTI_ZONE will be used as default Possible values: ["MULTI_ZONE", "SINGLE_ZONE"]
  final pulumi.Input<String> mode;
  /// Immutable. The zone for single zone Memorystore Redis cluster.
  final pulumi.Input<String> zone;
  /// Specify the zones of a multi-zone cluster where Redis Cluster
  /// allocates resources. This flag isn't applicable for single-zone clusters.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetClusterZoneDistributionConfig].
  /// [activeZones] The exact list of zones where the cluster currently has active VMs.
  /// [mode] Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// [zone] Immutable. The zone for single zone Memorystore Redis cluster.
  /// [zones] Specify the zones of a multi-zone cluster where Redis Cluster
  const GetClusterZoneDistributionConfig({
    required this.activeZones,
    required this.mode,
    required this.zone,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeZones': activeZones,
      'mode': mode,
      'zone': zone,
      'zones': zones,
    };
  }

  factory GetClusterZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterZoneDistributionConfig(
      activeZones: pulumi.Input.fromValue((map['activeZones'] as List).cast<String>()),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
