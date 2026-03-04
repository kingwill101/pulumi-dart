// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_deployment_response.dart';

/// Result data returned by listRemediationDeploymentsAtResourceGroup.
class ListRemediationDeploymentsAtResourceGroupResult {
  /// The URL to get the next set of results.
  final String nextLink;

  /// Array of deployments for the remediation.
  final List<RemediationDeploymentResponse> value;

  /// Creates a new [ListRemediationDeploymentsAtResourceGroupResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] Array of deployments for the remediation.
  ListRemediationDeploymentsAtResourceGroupResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value':
          pulumi.Input.encodeList<
            RemediationDeploymentResponse,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory ListRemediationDeploymentsAtResourceGroupResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListRemediationDeploymentsAtResourceGroupResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<RemediationDeploymentResponse>(
        map['value']!,
        (value) => RemediationDeploymentResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
