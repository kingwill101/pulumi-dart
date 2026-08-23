// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterManagedMachineLearningDiagnosticsConfig {
  /// Whether or not the managed ML diagnostics feature is enabled. To disable the feature, explicitly set this to `false`.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ClusterManagedMachineLearningDiagnosticsConfig].
  /// [enabled] Whether or not the managed ML diagnostics feature is enabled. To disable the feature, explicitly set this to `false`.
  const ClusterManagedMachineLearningDiagnosticsConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ClusterManagedMachineLearningDiagnosticsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterManagedMachineLearningDiagnosticsConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
