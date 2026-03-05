// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_posture_config_mode_gkehub_v1beta.dart';
import 'security_posture_config_vulnerability_mode_gkehub_v1beta.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigGkehubV1beta {
  /// Sets which mode to use for Security Posture features.
  final pulumi.Input<SecurityPostureConfigModeGkehubV1beta>? mode;
  /// Sets which mode to use for vulnerability scanning.
  final pulumi.Input<SecurityPostureConfigVulnerabilityModeGkehubV1beta>? vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigGkehubV1beta].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfigGkehubV1beta({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigModeGkehubV1beta, String>(mode, (value) => value.wireValue),
      'vulnerabilityMode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigVulnerabilityModeGkehubV1beta, String>(vulnerabilityMode, (value) => value.wireValue),
    };
  }

  factory SecurityPostureConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfigGkehubV1beta(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigModeGkehubV1beta.fromValue(guardedValue as String)); })(),
      vulnerabilityMode: (() { final guardedValue = map['vulnerabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigVulnerabilityModeGkehubV1beta.fromValue(guardedValue as String)); })(),
    );
  }
}

