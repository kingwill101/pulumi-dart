// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_posture_config_mode_container_v1beta1.dart';
import 'security_posture_config_vulnerability_mode_container_v1beta1.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigContainerV1beta1 {
  /// Sets which mode to use for Security Posture features.
  final pulumi.Input<SecurityPostureConfigModeContainerV1beta1>? mode;
  /// Sets which mode to use for vulnerability scanning.
  final pulumi.Input<SecurityPostureConfigVulnerabilityModeContainerV1beta1>? vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigContainerV1beta1].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  const SecurityPostureConfigContainerV1beta1({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigModeContainerV1beta1, String>(mode, (value) => value.wireValue),
      'vulnerabilityMode': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigVulnerabilityModeContainerV1beta1, String>(vulnerabilityMode, (value) => value.wireValue),
    };
  }

  factory SecurityPostureConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfigContainerV1beta1(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigModeContainerV1beta1.fromValue(guardedValue as String)); })(),
      vulnerabilityMode: (() { final guardedValue = map['vulnerabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigVulnerabilityModeContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}
