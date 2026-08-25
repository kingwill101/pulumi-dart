// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig {
  /// The autoscaling policy used by the cluster. Only resource names including projectid and location (region) are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/` Note that the policy must be in the same project and Dataproc region.
  final pulumi.Input<String?>? policy;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig].
  /// [policy] The autoscaling policy used by the cluster. Only resource names including projectid and location (region) are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/` Note that the policy must be in the same project and Dataproc region.
  const WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
