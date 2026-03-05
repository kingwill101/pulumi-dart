// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadSaaEnrollmentResponse {
  /// Indicates SAA enrollment setup error if any.
  final pulumi.Input<List<String>>? setupErrors;
  /// Indicates SAA enrollment status of a given workload. Possible values: SETUP_STATE_UNSPECIFIED, STATUS_PENDING, STATUS_COMPLETE
  final pulumi.Input<String>? setupStatus;

  /// Creates a new [WorkloadSaaEnrollmentResponse].
  /// [setupErrors] Indicates SAA enrollment setup error if any.
  /// [setupStatus] Indicates SAA enrollment status of a given workload. Possible values: SETUP_STATE_UNSPECIFIED, STATUS_PENDING, STATUS_COMPLETE
  WorkloadSaaEnrollmentResponse({
    this.setupErrors,
    this.setupStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setupErrors': ?setupErrors,
      'setupStatus': ?setupStatus,
    };
  }

  factory WorkloadSaaEnrollmentResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadSaaEnrollmentResponse(
      setupErrors: (() { final guardedValue = map['setupErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      setupStatus: (() { final guardedValue = map['setupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

