// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetDefaultClusterConfigSecurityPostureConfig {
  /// Sets which mode to use for Security Posture features.
  /// Possible values are: `DISABLED`, `BASIC`, `ENTERPRISE`.
  final pulumi.Input<String>? mode;
  /// Sets which mode to use for vulnerability scanning.
  /// Possible values are: `VULNERABILITY_DISABLED`, `VULNERABILITY_BASIC`, `VULNERABILITY_ENTERPRISE`.
  final pulumi.Input<String>? vulnerabilityMode;

  /// Creates a new [FleetDefaultClusterConfigSecurityPostureConfig].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  FleetDefaultClusterConfigSecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'vulnerabilityMode': ?vulnerabilityMode,
    };
  }

  factory FleetDefaultClusterConfigSecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return FleetDefaultClusterConfigSecurityPostureConfig(
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      vulnerabilityMode: map['vulnerabilityMode'] == null ? null : (map['vulnerabilityMode']! as String).input(),
    );
  }
}

