// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceZoneDistributionConfig {
  /// (Output)
  /// The exact list of zones where the instance currently has active VMs.
  final pulumi.Input<List<String>?>? activeZones;
  /// Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// Possible values:
  /// MULTI_ZONE
  /// SINGLE_ZONE
  /// Possible values are: `MULTI_ZONE`, `SINGLE_ZONE`.
  final pulumi.Input<String?>? mode;
  /// Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// Ignored for MULTI_ZONE mode.
  final pulumi.Input<String?>? zone;
  /// Specify the zones of a multi-zone instance where Memorystore
  /// instance allocates resources. This flag isn't applicable for single-zone
  /// instances.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [InstanceZoneDistributionConfig].
  /// [activeZones] (Output)
  /// [mode] Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// [zone] Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// [zones] Specify the zones of a multi-zone instance where Memorystore
  const InstanceZoneDistributionConfig({
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

  factory InstanceZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return InstanceZoneDistributionConfig(
      activeZones: (() { final guardedValue = map['activeZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
