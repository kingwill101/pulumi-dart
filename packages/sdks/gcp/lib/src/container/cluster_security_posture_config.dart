// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterSecurityPostureConfig {
  /// Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include `DISABLED`, `BASIC`, and `ENTERPRISE`.
  final pulumi.Input<String>? mode;
  /// Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include `VULNERABILITY_DISABLED`, `VULNERABILITY_BASIC` and `VULNERABILITY_ENTERPRISE`.
  final pulumi.Input<String>? vulnerabilityMode;

  /// Creates a new [ClusterSecurityPostureConfig].
  /// [mode] Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include `DISABLED`, `BASIC`, and `ENTERPRISE`.
  /// [vulnerabilityMode] Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include `VULNERABILITY_DISABLED`, `VULNERABILITY_BASIC` and `VULNERABILITY_ENTERPRISE`.
  const ClusterSecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'vulnerabilityMode': ?vulnerabilityMode,
    };
  }

  factory ClusterSecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecurityPostureConfig(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vulnerabilityMode: (() { final guardedValue = map['vulnerabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
