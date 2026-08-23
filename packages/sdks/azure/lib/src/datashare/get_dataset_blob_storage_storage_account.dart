// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatasetBlobStorageStorageAccount {
  /// The name of this Data Share Blob Storage Dataset.
  final pulumi.Input<String> name;
  /// The resource group name of the storage account to be shared with the receiver.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription id of the storage account to be shared with the receiver.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetDatasetBlobStorageStorageAccount].
  /// [name] The name of this Data Share Blob Storage Dataset.
  /// [resourceGroupName] The resource group name of the storage account to be shared with the receiver.
  /// [subscriptionId] The subscription id of the storage account to be shared with the receiver.
  const GetDatasetBlobStorageStorageAccount({
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

  factory GetDatasetBlobStorageStorageAccount.fromMap(Map<String, dynamic> map) {
    return GetDatasetBlobStorageStorageAccount(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}
