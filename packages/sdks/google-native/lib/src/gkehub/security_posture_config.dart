// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_posture_config_mode.dart';
import 'security_posture_config_vulnerability_mode.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfig {
  /// Sets which mode to use for Security Posture features.
  final pulumi.Input<SecurityPostureConfigMode>? mode;
  /// Sets which mode to use for vulnerability scanning.
  final pulumi.Input<SecurityPostureConfigVulnerabilityMode>? vulnerabilityMode;

  /// Creates a new [SecurityPostureConfig].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigMode, String>(mode, (value) => value.value),
      'vulnerabilityMode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigVulnerabilityMode, String>(vulnerabilityMode, (value) => value.value),
    };
  }

  factory SecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfig(
      mode: map['mode'] == null ? null : (SecurityPostureConfigMode.fromValue(map['mode']! as String)).input(),
      vulnerabilityMode: map['vulnerabilityMode'] == null ? null : (SecurityPostureConfigVulnerabilityMode.fromValue(map['vulnerabilityMode']! as String)).input(),
    );
  }
}

