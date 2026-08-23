// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_deployment_response.dart';

/// Result data returned by listRemediationDeploymentsAtManagementGroup.
class ListRemediationDeploymentsAtManagementGroupResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The RemediationDeployment items on this page
  final List<RemediationDeploymentResponse> value;

  /// Creates a new [ListRemediationDeploymentsAtManagementGroupResult].
  /// [nextLink] The link to the next page of items
  /// [value] The RemediationDeployment items on this page
  const ListRemediationDeploymentsAtManagementGroupResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<RemediationDeploymentResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListRemediationDeploymentsAtManagementGroupResult.fromMap(Map<String, dynamic> map) {
    return ListRemediationDeploymentsAtManagementGroupResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<RemediationDeploymentResponse>(map['value']!, (value) => RemediationDeploymentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
