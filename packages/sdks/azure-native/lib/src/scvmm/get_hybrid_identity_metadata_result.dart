// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHybridIdentityMetadata.
class GetHybridIdentityMetadataResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the resource.
  final IdentityResponse identity;
  /// The name of the resource
  final String name;
  /// Gets or sets the provisioning state.
  final String provisioningState;
  /// Gets or sets the Public Key.
  final String? publicKey;
  /// Gets or sets the Vm Id.
  final String? resourceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHybridIdentityMetadataResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the resource.
  /// [name] The name of the resource
  /// [provisioningState] Gets or sets the provisioning state.
  /// [publicKey] Gets or sets the Public Key.
  /// [resourceUid] Gets or sets the Vm Id.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHybridIdentityMetadataResult({
    required this.azureApiVersion,
    required this.id,
    required this.identity,
    required this.name,
    required this.provisioningState,
    this.publicKey,
    this.resourceUid,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': identity.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'publicKey': ?publicKey,
      'resourceUid': ?resourceUid,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetHybridIdentityMetadataResult.fromMap(Map<String, dynamic> map) {
    return GetHybridIdentityMetadataResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      resourceUid: map['resourceUid'] == null ? null : map['resourceUid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

