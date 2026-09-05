// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_blob_storage_storage_account.dart';

/// Result data returned by getDatasetBlobStorage.
class GetDatasetBlobStorageResult {
  /// The name of the storage account container to be shared with the receiver.
  final String? containerName;
  final String? dataShareId;
  /// The name of the Data Share Dataset.
  final String? displayName;
  /// The path of the file in the storage container to be shared with the receiver.
  final String? filePath;
  /// The folder path of the file in the storage container to be shared with the receiver.
  final String? folderPath;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the storage account to be shared with the receiver.
  final String? name;
  /// A `storageAccount` block as defined below.
  final List<GetDatasetBlobStorageStorageAccount>? storageAccounts;

  /// Creates a new [GetDatasetBlobStorageResult].
  /// [containerName] The name of the storage account container to be shared with the receiver.
  /// [dataShareId] Optional.
  /// [displayName] The name of the Data Share Dataset.
  /// [filePath] The path of the file in the storage container to be shared with the receiver.
  /// [folderPath] The folder path of the file in the storage container to be shared with the receiver.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the storage account to be shared with the receiver.
  /// [storageAccounts] A `storageAccount` block as defined below.
  const GetDatasetBlobStorageResult({
    this.containerName,
    this.dataShareId,
    this.displayName,
    this.filePath,
    this.folderPath,
    this.id,
    this.name,
    this.storageAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'dataShareId': ?dataShareId,
      'displayName': ?displayName,
      'filePath': ?filePath,
      'folderPath': ?folderPath,
      'id': ?id,
      'name': ?name,
      'storageAccounts': ?(() { final guardedValue = storageAccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatasetBlobStorageStorageAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDatasetBlobStorageResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetBlobStorageResult(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataShareId: (() { final guardedValue = map['dataShareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatasetBlobStorageStorageAccount>(guardedValue, (value) => GetDatasetBlobStorageStorageAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
