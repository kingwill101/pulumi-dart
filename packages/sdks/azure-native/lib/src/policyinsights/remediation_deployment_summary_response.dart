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
  RemediationDeploymentSummaryResponse({
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

  factory RemediationDeploymentSummaryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RemediationDeploymentSummaryResponse(
      failedDeployments: pulumi.Input.fromValue(
        map['failedDeployments'] as int,
      ),
      successfulDeployments: pulumi.Input.fromValue(
        map['successfulDeployments'] as int,
      ),
      totalDeployments: pulumi.Input.fromValue(map['totalDeployments'] as int),
    );
  }
}
