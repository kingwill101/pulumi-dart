// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceZoneDistributionConfig {
  /// Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// Possible values:
  /// MULTI_ZONE
  /// SINGLE_ZONE
  /// Possible values are: `MULTI_ZONE`, `SINGLE_ZONE`.
  final pulumi.Input<String>? mode;
  /// Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// Ignored for MULTI_ZONE mode.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceZoneDistributionConfig].
  /// [mode] Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// [zone] Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  const InstanceZoneDistributionConfig({
    this.mode,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'zone': ?zone,
    };
  }

  factory InstanceZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return InstanceZoneDistributionConfig(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

