// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dataset_blob_storage_storage_account.dart';

/// Result data returned by getDatasetBlobStorage.
class GetDatasetBlobStorageResult {
  /// The name of the storage account container to be shared with the receiver.
  final String containerName;
  final String dataShareId;
  /// The name of the Data Share Dataset.
  final String displayName;
  /// The path of the file in the storage container to be shared with the receiver.
  final String filePath;
  /// The folder path of the file in the storage container to be shared with the receiver.
  final String folderPath;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the storage account to be shared with the receiver.
  final String name;
  /// A `storageAccount` block as defined below.
  final List<GetDatasetBlobStorageStorageAccount> storageAccounts;

  /// Creates a new [GetDatasetBlobStorageResult].
  /// [containerName] The name of the storage account container to be shared with the receiver.
  /// [dataShareId] Required.
  /// [displayName] The name of the Data Share Dataset.
  /// [filePath] The path of the file in the storage container to be shared with the receiver.
  /// [folderPath] The folder path of the file in the storage container to be shared with the receiver.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the storage account to be shared with the receiver.
  /// [storageAccounts] A `storageAccount` block as defined below.
  const GetDatasetBlobStorageResult({
    required this.containerName,
    required this.dataShareId,
    required this.displayName,
    required this.filePath,
    required this.folderPath,
    required this.id,
    required this.name,
    required this.storageAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'dataShareId': dataShareId,
      'displayName': displayName,
      'filePath': filePath,
      'folderPath': folderPath,
      'id': id,
      'name': name,
      'storageAccounts': pulumi.Input.encodeList<GetDatasetBlobStorageStorageAccount, Map<String, dynamic>>(storageAccounts, (value) => value.toMap()),
    };
  }

  factory GetDatasetBlobStorageResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetBlobStorageResult(
      containerName: map['containerName'] as String,
      dataShareId: map['dataShareId'] as String,
      displayName: map['displayName'] as String,
      filePath: map['filePath'] as String,
      folderPath: map['folderPath'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      storageAccounts: pulumi.Input.decodeList<GetDatasetBlobStorageStorageAccount>(map['storageAccounts']!, (value) => GetDatasetBlobStorageStorageAccount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
