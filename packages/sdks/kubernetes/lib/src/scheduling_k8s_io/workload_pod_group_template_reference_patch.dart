// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadPodGroupTemplateReference references the PodGroupTemplate within the Workload object.
class WorkloadPodGroupTemplateReferencePatch {
  /// PodGroupTemplateName defines the PodGroupTemplate name within the Workload object.
  final pulumi.Input<String?>? podGroupTemplateName;
  /// WorkloadName defines the name of the Workload object.
  final pulumi.Input<String?>? workloadName;

  /// Creates a new [WorkloadPodGroupTemplateReferencePatch].
  /// [podGroupTemplateName] PodGroupTemplateName defines the PodGroupTemplate name within the Workload object.
  /// [workloadName] WorkloadName defines the name of the Workload object.
  const WorkloadPodGroupTemplateReferencePatch({
    this.podGroupTemplateName,
    this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podGroupTemplateName': ?podGroupTemplateName,
      'workloadName': ?workloadName,
    };
  }

  factory WorkloadPodGroupTemplateReferencePatch.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupTemplateReferencePatch(
      podGroupTemplateName: (() { final guardedValue = map['podGroupTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadName: (() { final guardedValue = map['workloadName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
