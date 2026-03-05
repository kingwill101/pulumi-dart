// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_deployment_response.dart';

/// Result data returned by listRemediationDeploymentsAtResource.
class ListRemediationDeploymentsAtResourceResult {
  /// The URL to get the next set of results.
  final String nextLink;
  /// Array of deployments for the remediation.
  final List<RemediationDeploymentResponse> value;

  /// Creates a new [ListRemediationDeploymentsAtResourceResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] Array of deployments for the remediation.
  ListRemediationDeploymentsAtResourceResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<RemediationDeploymentResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListRemediationDeploymentsAtResourceResult.fromMap(Map<String, dynamic> map) {
    return ListRemediationDeploymentsAtResourceResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<RemediationDeploymentResponse>(map['value']!, (value) => RemediationDeploymentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

