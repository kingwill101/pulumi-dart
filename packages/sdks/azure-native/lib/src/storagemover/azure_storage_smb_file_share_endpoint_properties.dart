// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Azure Storage SMB file share endpoint.
class AzureStorageSmbFileShareEndpointProperties {
  /// A description for the Endpoint.
  final pulumi.Input<String?>? description;
  /// The Endpoint resource type.
  /// Expected value is 'AzureStorageSmbFileShare'.
  final pulumi.Input<String> endpointType;
  /// The name of the Azure Storage file share.
  final pulumi.Input<String> fileShareName;
  /// The Azure Resource ID of the storage account.
  final pulumi.Input<String> storageAccountResourceId;

  /// Creates a new [AzureStorageSmbFileShareEndpointProperties].
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [fileShareName] The name of the Azure Storage file share.
  /// [storageAccountResourceId] The Azure Resource ID of the storage account.
  const AzureStorageSmbFileShareEndpointProperties({
    this.description,
    required this.endpointType,
    required this.fileShareName,
    required this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointType': endpointType,
      'fileShareName': fileShareName,
      'storageAccountResourceId': storageAccountResourceId,
    };
  }

  factory AzureStorageSmbFileShareEndpointProperties.fromMap(Map<String, dynamic> map) {
    return AzureStorageSmbFileShareEndpointProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      fileShareName: pulumi.Input.fromValue(map['fileShareName'] as String),
      storageAccountResourceId: pulumi.Input.fromValue(map['storageAccountResourceId'] as String),
    );
  }
}
