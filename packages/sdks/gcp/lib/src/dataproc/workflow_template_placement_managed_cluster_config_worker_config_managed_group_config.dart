// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig {
  /// Output only. The name of the Instance Group Manager for this group.
  final pulumi.Input<String>? instanceGroupManagerName;
  /// Output only. The name of the Instance Template used for the Managed Instance Group.
  final pulumi.Input<String>? instanceTemplateName;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig].
  /// [instanceGroupManagerName] Output only. The name of the Instance Group Manager for this group.
  /// [instanceTemplateName] Output only. The name of the Instance Template used for the Managed Instance Group.
  const WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig({
    this.instanceGroupManagerName,
    this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManagerName': ?instanceGroupManagerName,
      'instanceTemplateName': ?instanceTemplateName,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigWorkerConfigManagedGroupConfig(
      instanceGroupManagerName: (() { final guardedValue = map['instanceGroupManagerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTemplateName: (() { final guardedValue = map['instanceTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
