// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The deployment status summary for all deployments created by the remediation.
class RemediationDeploymentSummaryResponse {
  /// The number of deployments required by the remediation that have failed.
  final pulumi.Input<int> failedDeployments;
  /// The number of deployments required by the remediation that have succeeded.
  final pulumi.Input<int> successfulDeployments;
  /// The number of deployments required by the remediation.
  final pulumi.Input<int> totalDeployments;

  /// Creates a new [RemediationDeploymentSummaryResponse].
  /// [failedDeployments] The number of deployments required by the remediation that have failed.
  /// [successfulDeployments] The number of deployments required by the remediation that have succeeded.
  /// [totalDeployments] The number of deployments required by the remediation.
  const RemediationDeploymentSummaryResponse({
    required this.failedDeployments,
    required this.successfulDeployments,
    required this.totalDeployments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedDeployments': failedDeployments,
      'successfulDeployments': successfulDeployments,
      'totalDeployments': totalDeployments,
    };
  }

  factory RemediationDeploymentSummaryResponse.fromMap(Map<String, dynamic> map) {
    return RemediationDeploymentSummaryResponse(
      failedDeployments: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['failedDeployments'])),
      successfulDeployments: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['successfulDeployments'])),
      totalDeployments: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalDeployments'])),
    );
  }
}
