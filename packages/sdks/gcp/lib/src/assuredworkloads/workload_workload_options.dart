// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadWorkloadOptions {
  /// Indicates type of KAJ enrollment for the workload. Currently, only specifiying KEY_ACCESS_TRANSPARENCY_OFF is implemented to not enroll in KAT-level KAJ enrollment for Regional Controls workloads. Possible values: KAJ_ENROLLMENT_TYPE_UNSPECIFIED, FULL_KAJ, EKM_ONLY, KEY_ACCESS_TRANSPARENCY_OFF
  final pulumi.Input<String?>? kajEnrollmentType;

  /// Creates a new [WorkloadWorkloadOptions].
  /// [kajEnrollmentType] Indicates type of KAJ enrollment for the workload. Currently, only specifiying KEY_ACCESS_TRANSPARENCY_OFF is implemented to not enroll in KAT-level KAJ enrollment for Regional Controls workloads. Possible values: KAJ_ENROLLMENT_TYPE_UNSPECIFIED, FULL_KAJ, EKM_ONLY, KEY_ACCESS_TRANSPARENCY_OFF
  const WorkloadWorkloadOptions({
    this.kajEnrollmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kajEnrollmentType': ?kajEnrollmentType,
    };
  }

  factory WorkloadWorkloadOptions.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadOptions(
      kajEnrollmentType: (() { final guardedValue = map['kajEnrollmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
