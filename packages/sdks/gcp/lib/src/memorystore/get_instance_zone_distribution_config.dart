// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceZoneDistributionConfig {
  /// Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// Possible values:
  /// MULTI_ZONE
  /// SINGLE_ZONE Possible values: ["MULTI_ZONE", "SINGLE_ZONE"]
  final pulumi.Input<String> mode;
  /// Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// Ignored for MULTI_ZONE mode.
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceZoneDistributionConfig].
  /// [mode] Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// [zone] Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  const GetInstanceZoneDistributionConfig({
    required this.mode,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'zone': zone,
    };
  }

  factory GetInstanceZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceZoneDistributionConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

