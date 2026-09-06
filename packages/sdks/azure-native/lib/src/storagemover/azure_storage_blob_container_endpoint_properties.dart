// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Azure Storage blob container endpoint.
class AzureStorageBlobContainerEndpointProperties {
  /// The name of the Storage blob container that is the target destination.
  final pulumi.Input<String> blobContainerName;
  /// A description for the Endpoint.
  final pulumi.Input<String?>? description;
  /// The Endpoint resource type.
  /// Expected value is 'AzureStorageBlobContainer'.
  final pulumi.Input<String> endpointType;
  /// The Azure Resource ID of the storage account that is the target destination.
  final pulumi.Input<String> storageAccountResourceId;

  /// Creates a new [AzureStorageBlobContainerEndpointProperties].
  /// [blobContainerName] The name of the Storage blob container that is the target destination.
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [storageAccountResourceId] The Azure Resource ID of the storage account that is the target destination.
  const AzureStorageBlobContainerEndpointProperties({
    required this.blobContainerName,
    this.description,
    required this.endpointType,
    required this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerName': blobContainerName,
      'description': ?description,
      'endpointType': endpointType,
      'storageAccountResourceId': storageAccountResourceId,
    };
  }

  factory AzureStorageBlobContainerEndpointProperties.fromMap(Map<String, dynamic> map) {
    return AzureStorageBlobContainerEndpointProperties(
      blobContainerName: pulumi.Input.fromValue(map['blobContainerName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      storageAccountResourceId: pulumi.Input.fromValue(map['storageAccountResourceId'] as String),
    );
  }
}
