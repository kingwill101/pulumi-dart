// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_deployment_response.dart';

/// Result data returned by listRemediationDeploymentsAtResourceGroup.
class ListRemediationDeploymentsAtResourceGroupResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The RemediationDeployment items on this page
  final List<RemediationDeploymentResponse>? value;

  /// Creates a new [ListRemediationDeploymentsAtResourceGroupResult].
  /// [nextLink] The link to the next page of items
  /// [value] The RemediationDeployment items on this page
  const ListRemediationDeploymentsAtResourceGroupResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<RemediationDeploymentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListRemediationDeploymentsAtResourceGroupResult.fromMap(Map<String, dynamic> map) {
    return ListRemediationDeploymentsAtResourceGroupResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RemediationDeploymentResponse>(guardedValue, (value) => RemediationDeploymentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
