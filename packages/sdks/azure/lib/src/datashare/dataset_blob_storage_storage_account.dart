// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetBlobStorageStorageAccount {
  /// The name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String> name;
  /// The resource group name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription id of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [DatasetBlobStorageStorageAccount].
  /// [name] The name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [resourceGroupName] The resource group name of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [subscriptionId] The subscription id of the storage account to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  DatasetBlobStorageStorageAccount({
    required this.name,
    required this.resourceGroupName,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': subscriptionId,
    };
  }

  factory DatasetBlobStorageStorageAccount.fromMap(Map<String, dynamic> map) {
    return DatasetBlobStorageStorageAccount(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

