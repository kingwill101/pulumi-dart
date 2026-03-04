// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_posture_config_mode_gkehub_v1alpha.dart';
import 'security_posture_config_vulnerability_mode_gkehub_v1alpha.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigGkehubV1alpha {
  /// Sets which mode to use for Security Posture features.
  final pulumi.Input<SecurityPostureConfigModeGkehubV1alpha>? mode;

  /// Sets which mode to use for vulnerability scanning.
  final pulumi.Input<SecurityPostureConfigVulnerabilityModeGkehubV1alpha>?
  vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigGkehubV1alpha].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfigGkehubV1alpha({this.mode, this.vulnerabilityMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPostureConfigModeGkehubV1alpha,
            String
          >(mode, (value) => value.wireValue),
      'vulnerabilityMode':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPostureConfigVulnerabilityModeGkehubV1alpha,
            String
          >(vulnerabilityMode, (value) => value.wireValue),
    };
  }

  factory SecurityPostureConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfigGkehubV1alpha(
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPostureConfigModeGkehubV1alpha.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      vulnerabilityMode: (() {
        final guardedValue = map['vulnerabilityMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPostureConfigVulnerabilityModeGkehubV1alpha.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
