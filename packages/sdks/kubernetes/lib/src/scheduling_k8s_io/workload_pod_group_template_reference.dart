// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadPodGroupTemplateReference references the PodGroupTemplate within the Workload object.
class WorkloadPodGroupTemplateReference {
  /// PodGroupTemplateName defines the PodGroupTemplate name within the Workload object.
  final pulumi.Input<String> podGroupTemplateName;
  /// WorkloadName defines the name of the Workload object.
  final pulumi.Input<String> workloadName;

  /// Creates a new [WorkloadPodGroupTemplateReference].
  /// [podGroupTemplateName] PodGroupTemplateName defines the PodGroupTemplate name within the Workload object.
  /// [workloadName] WorkloadName defines the name of the Workload object.
  const WorkloadPodGroupTemplateReference({
    required this.podGroupTemplateName,
    required this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podGroupTemplateName': podGroupTemplateName,
      'workloadName': workloadName,
    };
  }

  factory WorkloadPodGroupTemplateReference.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupTemplateReference(
      podGroupTemplateName: pulumi.Input.fromValue(map['podGroupTemplateName'] as String),
      workloadName: pulumi.Input.fromValue(map['workloadName'] as String),
    );
  }
}
