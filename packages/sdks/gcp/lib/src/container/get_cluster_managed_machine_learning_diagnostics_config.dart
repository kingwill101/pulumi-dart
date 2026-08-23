// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterManagedMachineLearningDiagnosticsConfig {
  /// Enable Managed Machine Learning Diagnostics.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterManagedMachineLearningDiagnosticsConfig].
  /// [enabled] Enable Managed Machine Learning Diagnostics.
  const GetClusterManagedMachineLearningDiagnosticsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterManagedMachineLearningDiagnosticsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedMachineLearningDiagnosticsConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
