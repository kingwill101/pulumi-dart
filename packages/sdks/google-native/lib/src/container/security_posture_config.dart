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
  const SecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigMode, String>(mode, (value) => value.wireValue),
      'vulnerabilityMode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigVulnerabilityMode, String>(vulnerabilityMode, (value) => value.wireValue),
    };
  }

  factory SecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfig(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigMode.fromValue(guardedValue as String)); })(),
      vulnerabilityMode: (() { final guardedValue = map['vulnerabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigVulnerabilityMode.fromValue(guardedValue as String)); })(),
    );
  }
}
