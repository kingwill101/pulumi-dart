// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAppServiceEnvironmentAseCustomDnsSuffixConfiguration.
class GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final String? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final String? dnsSuffix;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final String? keyVaultReferenceIdentity;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  final String provisioningDetails;
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificateUrl] The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  /// [dnsSuffix] The default custom domain suffix to use for all sites deployed on the ASE.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyVaultReferenceIdentity] The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [provisioningDetails] Required.
  /// [provisioningState] Required.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult({
    required this.azureApiVersion,
    this.certificateUrl,
    this.dnsSuffix,
    required this.id,
    this.keyVaultReferenceIdentity,
    this.kind,
    required this.name,
    required this.provisioningDetails,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'certificateUrl': ?certificateUrl,
      'dnsSuffix': ?dnsSuffix,
      'id': id,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'kind': ?kind,
      'name': name,
      'provisioningDetails': provisioningDetails,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentAseCustomDnsSuffixConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      keyVaultReferenceIdentity: (() { final guardedValue = map['keyVaultReferenceIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningDetails: map['provisioningDetails'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
