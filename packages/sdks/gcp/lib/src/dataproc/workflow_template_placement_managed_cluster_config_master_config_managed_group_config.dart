// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig {
  /// Output only. The name of the Instance Group Manager for this group.
  final pulumi.Input<String>? instanceGroupManagerName;
  /// Output only. The name of the Instance Template used for the Managed Instance Group.
  final pulumi.Input<String>? instanceTemplateName;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig].
  /// [instanceGroupManagerName] Output only. The name of the Instance Group Manager for this group.
  /// [instanceTemplateName] Output only. The name of the Instance Template used for the Managed Instance Group.
  const WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig({
    this.instanceGroupManagerName,
    this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManagerName': ?instanceGroupManagerName,
      'instanceTemplateName': ?instanceTemplateName,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig(
      instanceGroupManagerName: (() { final guardedValue = map['instanceGroupManagerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTemplateName: (() { final guardedValue = map['instanceTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

