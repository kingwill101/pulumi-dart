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
  WorkflowTemplatePlacementManagedClusterConfigMasterConfigManagedGroupConfig({
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
      instanceGroupManagerName: map['instanceGroupManagerName'] == null ? null : (map['instanceGroupManagerName']! as String).input(),
      instanceTemplateName: map['instanceTemplateName'] == null ? null : (map['instanceTemplateName']! as String).input(),
    );
  }
}

