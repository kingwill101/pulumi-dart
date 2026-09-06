// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// Full view of the custom domain suffix configuration for ASEv3.
class CustomDnsSuffixConfigurationResponse {
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final pulumi.Input<String?>? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final pulumi.Input<String?>? dnsSuffix;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final pulumi.Input<String?>? keyVaultReferenceIdentity;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// The name of the resource
  final pulumi.Input<String> name;
  final pulumi.Input<String> provisioningDetails;
  final pulumi.Input<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [CustomDnsSuffixConfigurationResponse].
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
  const CustomDnsSuffixConfigurationResponse({
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
      'certificateUrl': ?certificateUrl,
      'dnsSuffix': ?dnsSuffix,
      'id': id,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'kind': ?kind,
      'name': name,
      'provisioningDetails': provisioningDetails,
      'provisioningState': provisioningState,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory CustomDnsSuffixConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CustomDnsSuffixConfigurationResponse(
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      keyVaultReferenceIdentity: (() { final guardedValue = map['keyVaultReferenceIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningDetails: pulumi.Input.fromValue(map['provisioningDetails'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
