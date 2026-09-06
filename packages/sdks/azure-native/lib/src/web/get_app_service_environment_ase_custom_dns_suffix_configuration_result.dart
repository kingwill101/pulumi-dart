// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAppServiceEnvironmentAseCustomDnsSuffixConfiguration.
class GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final String? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final String? dnsSuffix;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final String? keyVaultReferenceIdentity;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  final String? provisioningDetails;
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificateUrl] The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  /// [dnsSuffix] The default custom domain suffix to use for all sites deployed on the ASE.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyVaultReferenceIdentity] The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [provisioningDetails] Optional.
  /// [provisioningState] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult({
    this.azureApiVersion,
    this.certificateUrl,
    this.dnsSuffix,
    this.id,
    this.keyVaultReferenceIdentity,
    this.kind,
    this.name,
    this.provisioningDetails,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'certificateUrl': ?certificateUrl,
      'dnsSuffix': ?dnsSuffix,
      'id': ?id,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'kind': ?kind,
      'name': ?name,
      'provisioningDetails': ?provisioningDetails,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultReferenceIdentity: (() { final guardedValue = map['keyVaultReferenceIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningDetails: (() { final guardedValue = map['provisioningDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
