// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadReference references the Workload object together with the template that was used to create a particular PodGroup.
class WorkloadReferencePatch {
  /// templateName is the name of a template within the Workload object that was used to create a pod group. It must be a DNS label. This field is required.
  final pulumi.Input<String?>? templateName;
  /// workloadName is the name of the Workload object that contains a template that was used when creating a pod group. It must be a DNS name. This field is required.
  final pulumi.Input<String?>? workloadName;

  /// Creates a new [WorkloadReferencePatch].
  /// [templateName] templateName is the name of a template within the Workload object that was used to create a pod group. It must be a DNS label. This field is required.
  /// [workloadName] workloadName is the name of the Workload object that contains a template that was used when creating a pod group. It must be a DNS name. This field is required.
  const WorkloadReferencePatch({
    this.templateName,
    this.workloadName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateName': ?templateName,
      'workloadName': ?workloadName,
    };
  }

  factory WorkloadReferencePatch.fromMap(Map<String, dynamic> map) {
    return WorkloadReferencePatch(
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadName: (() { final guardedValue = map['workloadName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
