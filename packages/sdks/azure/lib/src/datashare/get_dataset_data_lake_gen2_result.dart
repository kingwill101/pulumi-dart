// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetDataLakeGen2.
class GetDatasetDataLakeGen2Result {
  /// The name of the Data Share Dataset.
  final String displayName;
  /// The path of the file in the data lake file system to be shared with the receiver.
  final String filePath;
  /// The name of the data lake file system to be shared with the receiver.
  final String fileSystemName;
  /// The folder path in the data lake file system to be shared with the receiver.
  final String folderPath;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String shareId;
  /// The resource ID of the storage account of the data lake file system to be shared with the receiver.
  final String storageAccountId;

  /// Creates a new [GetDatasetDataLakeGen2Result].
  /// [displayName] The name of the Data Share Dataset.
  /// [filePath] The path of the file in the data lake file system to be shared with the receiver.
  /// [fileSystemName] The name of the data lake file system to be shared with the receiver.
  /// [folderPath] The folder path in the data lake file system to be shared with the receiver.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [shareId] Required.
  /// [storageAccountId] The resource ID of the storage account of the data lake file system to be shared with the receiver.
  const GetDatasetDataLakeGen2Result({
    required this.displayName,
    required this.filePath,
    required this.fileSystemName,
    required this.folderPath,
    required this.id,
    required this.name,
    required this.shareId,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'filePath': filePath,
      'fileSystemName': fileSystemName,
      'folderPath': folderPath,
      'id': id,
      'name': name,
      'shareId': shareId,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetDatasetDataLakeGen2Result.fromMap(Map<String, dynamic> map) {
    return GetDatasetDataLakeGen2Result(
      displayName: map['displayName'] as String,
      filePath: map['filePath'] as String,
      fileSystemName: map['fileSystemName'] as String,
      folderPath: map['folderPath'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      shareId: map['shareId'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

