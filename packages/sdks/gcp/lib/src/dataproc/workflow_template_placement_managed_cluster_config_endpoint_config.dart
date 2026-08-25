// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigEndpointConfig {
  /// If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  final pulumi.Input<bool?>? enableHttpPortAccess;
  /// Output only. The map of port descriptions to URLs. Will only be populated if enableHttpPortAccess is true.
  final pulumi.Input<Map<String, String>?>? httpPorts;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigEndpointConfig].
  /// [enableHttpPortAccess] If true, enable http access to specific ports on the cluster from external sources. Defaults to false.
  /// [httpPorts] Output only. The map of port descriptions to URLs. Will only be populated if enableHttpPortAccess is true.
  const WorkflowTemplatePlacementManagedClusterConfigEndpointConfig({
    this.enableHttpPortAccess,
    this.httpPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHttpPortAccess': ?enableHttpPortAccess,
      'httpPorts': ?httpPorts,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigEndpointConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigEndpointConfig(
      enableHttpPortAccess: (() { final guardedValue = map['enableHttpPortAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpPorts: (() { final guardedValue = map['httpPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
