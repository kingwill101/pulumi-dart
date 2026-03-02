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
      'value': ?value == null ? null : pulumi.Input.encodeList<AzureDevOpsOrgResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListAzureDevOpsOrgAvailableResult.fromMap(Map<String, dynamic> map) {
    return ListAzureDevOpsOrgAvailableResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<AzureDevOpsOrgResponse>(map['value']!, (value) => AzureDevOpsOrgResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

