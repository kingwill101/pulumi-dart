// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterSecurityPostureConfig {
  /// Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include DISABLED, BASIC, and ENTERPRISE.
  final pulumi.Input<String> mode;
  /// Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include VULNERABILITY_DISABLED, VULNERABILITY_BASIC and VULNERABILITY_ENTERPRISE.
  final pulumi.Input<String> vulnerabilityMode;

  /// Creates a new [GetClusterSecurityPostureConfig].
  /// [mode] Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include DISABLED, BASIC, and ENTERPRISE.
  /// [vulnerabilityMode] Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include VULNERABILITY_DISABLED, VULNERABILITY_BASIC and VULNERABILITY_ENTERPRISE.
  const GetClusterSecurityPostureConfig({
    required this.mode,
    required this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'vulnerabilityMode': vulnerabilityMode,
    };
  }

  factory GetClusterSecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecurityPostureConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      vulnerabilityMode: pulumi.Input.fromValue(map['vulnerabilityMode'] as String),
    );
  }
}
