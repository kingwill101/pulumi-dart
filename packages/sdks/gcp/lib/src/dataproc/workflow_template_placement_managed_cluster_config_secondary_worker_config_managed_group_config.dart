// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig {
  /// Output only. The name of the Instance Group Manager for this group.
  final pulumi.Input<String>? instanceGroupManagerName;
  /// Output only. The name of the Instance Template used for the Managed Instance Group.
  final pulumi.Input<String>? instanceTemplateName;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig].
  /// [instanceGroupManagerName] Output only. The name of the Instance Group Manager for this group.
  /// [instanceTemplateName] Output only. The name of the Instance Template used for the Managed Instance Group.
  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig({
    this.instanceGroupManagerName,
    this.instanceTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManagerName': ?instanceGroupManagerName,
      'instanceTemplateName': ?instanceTemplateName,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig(
      instanceGroupManagerName: map['instanceGroupManagerName'] == null ? null : (map['instanceGroupManagerName'] as String).input(),
      instanceTemplateName: map['instanceTemplateName'] == null ? null : (map['instanceTemplateName'] as String).input(),
    );
  }
}

