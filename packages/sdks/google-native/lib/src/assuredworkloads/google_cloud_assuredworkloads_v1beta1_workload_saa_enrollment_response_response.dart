// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Signed Access Approvals (SAA) enrollment response.
class GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse {
  /// Indicates SAA enrollment setup error if any.
  final pulumi.Input<List<String>> setupErrors;
  /// Indicates SAA enrollment status of a given workload.
  final pulumi.Input<String> setupStatus;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse].
  /// [setupErrors] Indicates SAA enrollment setup error if any.
  /// [setupStatus] Indicates SAA enrollment status of a given workload.
  GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse({
    required this.setupErrors,
    required this.setupStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setupErrors': setupErrors,
      'setupStatus': setupStatus,
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadSaaEnrollmentResponseResponse(
      setupErrors: ((map['setupErrors'] as List).cast<String>()).input(),
      setupStatus: (map['setupStatus'] as String).input(),
    );
  }
}

