// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Signed Access Approvals (SAA) enrollment response.
class GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse {
  /// Indicates SAA enrollment setup error if any.
  final pulumi.Input<List<String>> setupErrors;
  /// Indicates SAA enrollment status of a given workload.
  final pulumi.Input<String> setupStatus;

  /// Creates a new [GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse].
  /// [setupErrors] Indicates SAA enrollment setup error if any.
  /// [setupStatus] Indicates SAA enrollment status of a given workload.
  const GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse({
    required this.setupErrors,
    required this.setupStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setupErrors': setupErrors,
      'setupStatus': setupStatus,
    };
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponseResponse(
      setupErrors: pulumi.Input.fromValue((map['setupErrors'] as List).cast<String>()),
      setupStatus: pulumi.Input.fromValue(map['setupStatus'] as String),
    );
  }
}
