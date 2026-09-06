// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticSiteCustomDomain.
class GetStaticSiteCustomDomainResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The date and time on which the custom domain was created for the static site.
  final String? createdOn;
  /// The domain name for the static site custom domain.
  final String? domainName;
  final String? errorMessage;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// The status of the custom domain
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The TXT record validation token
  final String? validationToken;

  /// Creates a new [GetStaticSiteCustomDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdOn] The date and time on which the custom domain was created for the static site.
  /// [domainName] The domain name for the static site custom domain.
  /// [errorMessage] Optional.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [status] The status of the custom domain
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validationToken] The TXT record validation token
  const GetStaticSiteCustomDomainResult({
    this.azureApiVersion,
    this.createdOn,
    this.domainName,
    this.errorMessage,
    this.id,
    this.kind,
    this.name,
    this.status,
    this.systemData,
    this.type,
    this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdOn': ?createdOn,
      'domainName': ?domainName,
      'errorMessage': ?errorMessage,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'validationToken': ?validationToken,
    };
  }

  factory GetStaticSiteCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteCustomDomainResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationToken: (() { final guardedValue = map['validationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
