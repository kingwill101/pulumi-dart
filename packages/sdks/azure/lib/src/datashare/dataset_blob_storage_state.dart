// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_blob_storage_storage_account.dart';

/// Input properties used for looking up and filtering DatasetBlobStorage resources.
class DatasetBlobStorageState {
  /// The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? containerName;
  /// The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? dataShareId;
  /// The name of the Data Share Dataset.
  final pulumi.Input<String>? displayName;
  /// The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? filePath;
  /// The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? folderPath;
  /// The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created.
  final pulumi.Input<String>? name;
  /// A `storage_account` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DatasetBlobStorageStorageAccount>? storageAccount;

  /// Creates a new [DatasetBlobStorageState].
  /// [containerName] The name of the storage account container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [dataShareId] The ID of the Data Share in which this Data Share Blob Storage Dataset should be created. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [displayName] The name of the Data Share Dataset.
  /// [filePath] The path of the file in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [folderPath] The path of the folder in the storage container to be shared with the receiver. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [name] The name which should be used for this Data Share Blob Storage Dataset. Changing this forces a new Data Share Blob Storage Dataset to be created.
  /// [storageAccount] A `storage_account` block as defined below. Changing this forces a new resource to be created.
  DatasetBlobStorageState({
    this.containerName,
    this.dataShareId,
    this.displayName,
    this.filePath,
    this.folderPath,
    this.name,
    this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'dataShareId': ?dataShareId,
      'displayName': ?displayName,
      'filePath': ?filePath,
      'folderPath': ?folderPath,
      'name': ?name,
      'storageAccount': ?pulumi.Input.mapOptionalInputValue<DatasetBlobStorageStorageAccount, Map<String, dynamic>>(storageAccount, (value) => value.toMap()),
    };
  }

  factory DatasetBlobStorageState.fromMap(Map<String, dynamic> map) {
    return DatasetBlobStorageState(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataShareId: (() { final guardedValue = map['dataShareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccount: (() { final guardedValue = map['storageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetBlobStorageStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

