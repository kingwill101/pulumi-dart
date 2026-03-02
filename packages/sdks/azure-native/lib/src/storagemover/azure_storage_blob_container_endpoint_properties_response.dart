// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Azure Storage blob container endpoint.
class AzureStorageBlobContainerEndpointPropertiesResponse {
  /// The name of the Storage blob container that is the target destination.
  final pulumi.Input<String> blobContainerName;
  /// A description for the Endpoint.
  final pulumi.Input<String>? description;
  /// The Endpoint resource type.
  /// Expected value is 'AzureStorageBlobContainer'.
  final pulumi.Input<String> endpointType;
  /// The provisioning state of this resource.
  final pulumi.Input<String> provisioningState;
  /// The Azure Resource ID of the storage account that is the target destination.
  final pulumi.Input<String> storageAccountResourceId;

  /// Creates a new [AzureStorageBlobContainerEndpointPropertiesResponse].
  /// [blobContainerName] The name of the Storage blob container that is the target destination.
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [provisioningState] The provisioning state of this resource.
  /// [storageAccountResourceId] The Azure Resource ID of the storage account that is the target destination.
  AzureStorageBlobContainerEndpointPropertiesResponse({
    required this.blobContainerName,
    this.description,
    required this.endpointType,
    required this.provisioningState,
    required this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerName': blobContainerName,
      'description': ?description,
      'endpointType': endpointType,
      'provisioningState': provisioningState,
      'storageAccountResourceId': storageAccountResourceId,
    };
  }

  factory AzureStorageBlobContainerEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureStorageBlobContainerEndpointPropertiesResponse(
      blobContainerName: (map['blobContainerName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      storageAccountResourceId: (map['storageAccountResourceId'] as String).input(),
    );
  }
}

