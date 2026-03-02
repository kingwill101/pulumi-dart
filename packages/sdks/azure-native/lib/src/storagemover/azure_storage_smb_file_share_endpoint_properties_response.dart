// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Azure Storage SMB file share endpoint.
class AzureStorageSmbFileShareEndpointPropertiesResponse {
  /// A description for the Endpoint.
  final pulumi.Input<String>? description;
  /// The Endpoint resource type.
  /// Expected value is 'AzureStorageSmbFileShare'.
  final pulumi.Input<String> endpointType;
  /// The name of the Azure Storage file share.
  final pulumi.Input<String> fileShareName;
  /// The provisioning state of this resource.
  final pulumi.Input<String> provisioningState;
  /// The Azure Resource ID of the storage account.
  final pulumi.Input<String> storageAccountResourceId;

  /// Creates a new [AzureStorageSmbFileShareEndpointPropertiesResponse].
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [fileShareName] The name of the Azure Storage file share.
  /// [provisioningState] The provisioning state of this resource.
  /// [storageAccountResourceId] The Azure Resource ID of the storage account.
  AzureStorageSmbFileShareEndpointPropertiesResponse({
    this.description,
    required this.endpointType,
    required this.fileShareName,
    required this.provisioningState,
    required this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointType': endpointType,
      'fileShareName': fileShareName,
      'provisioningState': provisioningState,
      'storageAccountResourceId': storageAccountResourceId,
    };
  }

  factory AzureStorageSmbFileShareEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureStorageSmbFileShareEndpointPropertiesResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      fileShareName: (map['fileShareName'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      storageAccountResourceId: (map['storageAccountResourceId'] as String).input(),
    );
  }
}

