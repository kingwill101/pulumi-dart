// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticSiteCustomDomain.
class GetStaticSiteCustomDomainResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The date and time on which the custom domain was created for the static site.
  final String createdOn;
  /// The domain name for the static site custom domain.
  final String domainName;
  final String errorMessage;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  /// The status of the custom domain
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The TXT record validation token
  final String validationToken;

  /// Creates a new [GetStaticSiteCustomDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdOn] The date and time on which the custom domain was created for the static site.
  /// [domainName] The domain name for the static site custom domain.
  /// [errorMessage] Required.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [status] The status of the custom domain
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationToken] The TXT record validation token
  const GetStaticSiteCustomDomainResult({
    required this.azureApiVersion,
    required this.createdOn,
    required this.domainName,
    required this.errorMessage,
    required this.id,
    this.kind,
    required this.name,
    required this.status,
    required this.systemData,
    required this.type,
    required this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdOn': createdOn,
      'domainName': domainName,
      'errorMessage': errorMessage,
      'id': id,
      'kind': ?kind,
      'name': name,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
      'validationToken': validationToken,
    };
  }

  factory GetStaticSiteCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteCustomDomainResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdOn: map['createdOn'] as String,
      domainName: map['domainName'] as String,
      errorMessage: map['errorMessage'] as String,
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      validationToken: map['validationToken'] as String,
    );
  }
}
