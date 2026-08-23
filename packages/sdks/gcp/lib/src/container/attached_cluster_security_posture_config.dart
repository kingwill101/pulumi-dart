// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedClusterSecurityPostureConfig {
  /// Sets the mode of the Kubernetes security posture API's workload vulnerability scanning.
  /// Possible values are: `VULNERABILITY_DISABLED`, `VULNERABILITY_ENTERPRISE`.
  final pulumi.Input<String> vulnerabilityMode;

  /// Creates a new [AttachedClusterSecurityPostureConfig].
  /// [vulnerabilityMode] Sets the mode of the Kubernetes security posture API's workload vulnerability scanning.
  const AttachedClusterSecurityPostureConfig({
    required this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vulnerabilityMode': vulnerabilityMode,
    };
  }

  factory AttachedClusterSecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterSecurityPostureConfig(
      vulnerabilityMode: pulumi.Input.fromValue(map['vulnerabilityMode'] as String),
    );
  }
}
