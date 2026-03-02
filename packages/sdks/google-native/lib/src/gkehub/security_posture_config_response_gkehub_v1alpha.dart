// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigResponseGkehubV1alpha {
  /// Sets which mode to use for Security Posture features.
  final pulumi.Input<String> mode;
  /// Sets which mode to use for vulnerability scanning.
  final pulumi.Input<String> vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigResponseGkehubV1alpha].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfigResponseGkehubV1alpha({
    required this.mode,
    required this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'vulnerabilityMode': vulnerabilityMode,
    };
  }

  factory SecurityPostureConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfigResponseGkehubV1alpha(
      mode: (map['mode'] as String).input(),
      vulnerabilityMode: (map['vulnerabilityMode'] as String).input(),
    );
  }
}

