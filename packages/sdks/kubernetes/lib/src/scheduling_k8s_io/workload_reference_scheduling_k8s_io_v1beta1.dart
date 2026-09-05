// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadReference references the Workload object together with the template that was used to create a particular PodGroup.
class WorkloadReferenceSchedulingK8sIoV1beta1 {
  /// templateName is the name of a template within the Workload object that was used to create a pod group. It must be a DNS label. This field is required.
  final pulumi.Input<String> templateName;
  /// workloadName is the name of the Workload object that contains a template that was used when creating a pod group. It must be a DNS name. This field is required.
  final pulumi.Input<String> workloadName;

  /// Creates a new [WorkloadReferenceSchedulingK8sIoV1beta1].
  /// [templateName] templateName is the name of a template within the Workload object that was used to create a pod group. It must be a DNS label. This field is required.
  /// [workloadName] workloadName is the name of the Workload object that contains a template that was used when creating a pod group. It must be a DNS name. This field is required.
  const WorkloadReferenceSchedulingK8sIoV1beta1({
    required this.templateName,
    required this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateName': templateName,
      'workloadName': workloadName,
    };
  }

  factory WorkloadReferenceSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadReferenceSchedulingK8sIoV1beta1(
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
      workloadName: pulumi.Input.fromValue(map['workloadName'] as String),
    );
  }
}
