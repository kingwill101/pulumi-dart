// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterLoggingConfig {
  /// The GKE components exposing logs. Supported values include:
  /// `SYSTEM_COMPONENTS`, `APISERVER`, `CONTROLLER_MANAGER`, `SCHEDULER`, and `WORKLOADS`.
  final pulumi.Input<List<String>> enableComponents;

  /// Creates a new [ClusterLoggingConfig].
  /// [enableComponents] The GKE components exposing logs. Supported values include:
  const ClusterLoggingConfig({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': enableComponents,
    };
  }

  factory ClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingConfig(
      enableComponents: pulumi.Input.fromValue((map['enableComponents'] as List).cast<String>()),
    );
  }
}

