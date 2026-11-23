// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceZoneDistributionConfig {
  /// The exact list of zones where the instance currently has active VMs.
  final pulumi.Input<List<String>> activeZones;
  /// Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// Possible values:
  /// MULTI_ZONE
  /// SINGLE_ZONE Possible values: ["MULTI_ZONE", "SINGLE_ZONE"]
  final pulumi.Input<String> mode;
  /// Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// Ignored for MULTI_ZONE mode.
  final pulumi.Input<String> zone;
  /// Specify the zones of a multi-zone instance where Memorystore
  /// instance allocates resources. This flag isn't applicable for single-zone
  /// instances.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetInstanceZoneDistributionConfig].
  /// [activeZones] The exact list of zones where the instance currently has active VMs.
  /// [mode] Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// [zone] Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// [zones] Specify the zones of a multi-zone instance where Memorystore
  const GetInstanceZoneDistributionConfig({
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

  factory GetInstanceZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceZoneDistributionConfig(
      activeZones: pulumi.Input.fromValue((map['activeZones'] as List).cast<String>()),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
