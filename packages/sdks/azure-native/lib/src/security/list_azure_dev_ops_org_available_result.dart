// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_org_response.dart';

/// Result data returned by listAzureDevOpsOrgAvailable.
class ListAzureDevOpsOrgAvailableResult {
  /// Gets or sets next link to scroll over the results.
  final String? nextLink;
  /// Gets or sets list of resources.
  final List<AzureDevOpsOrgResponse>? value;

  /// Creates a new [ListAzureDevOpsOrgAvailableResult].
  /// [nextLink] Gets or sets next link to scroll over the results.
  /// [value] Gets or sets list of resources.
  ListAzureDevOpsOrgAvailableResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureDevOpsOrgResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListAzureDevOpsOrgAvailableResult.fromMap(Map<String, dynamic> map) {
    return ListAzureDevOpsOrgAvailableResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureDevOpsOrgResponse>(guardedValue, (value) => AzureDevOpsOrgResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

