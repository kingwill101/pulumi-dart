// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterLoggingConfig {
  /// GKE components exposing logs. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, KCP_CONNECTION, KCP_SSHD, KCP_HPA, KCP_VPA, SCHEDULER, and WORKLOADS.
  final pulumi.Input<List<String>> enableComponents;

  /// Creates a new [GetClusterLoggingConfig].
  /// [enableComponents] GKE components exposing logs. Valid values include SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, KCP_CONNECTION, KCP_SSHD, KCP_HPA, KCP_VPA, SCHEDULER, and WORKLOADS.
  const GetClusterLoggingConfig({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': enableComponents,
    };
  }

  factory GetClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterLoggingConfig(
      enableComponents: pulumi.Input.fromValue((map['enableComponents'] as List).cast<String>()),
    );
  }
}
