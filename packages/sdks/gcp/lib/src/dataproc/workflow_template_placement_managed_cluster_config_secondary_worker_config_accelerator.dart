// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator {
  /// The number of the accelerator cards of this type exposed to this instance.
  final pulumi.Input<int>? acceleratorCount;
  /// Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See (https://docs.cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`.
  final pulumi.Input<String>? acceleratorType;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator].
  /// [acceleratorCount] The number of the accelerator cards of this type exposed to this instance.
  /// [acceleratorType] Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See (https://docs.cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`.
  const WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
