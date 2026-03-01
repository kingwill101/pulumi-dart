// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode.dart';
import 'security_posture_config_vulnerability_mode.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfig {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigMode? mode;
  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityMode? vulnerabilityMode;

  /// Creates a new [SecurityPostureConfig].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode == null ? null : mode!.value,
      'vulnerabilityMode': ?vulnerabilityMode == null ? null : vulnerabilityMode!.value,
    };
  }

  factory SecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfig(
      mode: map['mode'] == null ? null : SecurityPostureConfigMode.fromValue(map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null ? null : SecurityPostureConfigVulnerabilityMode.fromValue(map['vulnerabilityMode'] as String),
    );
  }
}

