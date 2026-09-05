// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatasetDataLakeGen2.
class GetDatasetDataLakeGen2Result {
  /// The name of the Data Share Dataset.
  final String? displayName;
  /// The path of the file in the data lake file system to be shared with the receiver.
  final String? filePath;
  /// The name of the data lake file system to be shared with the receiver.
  final String? fileSystemName;
  /// The folder path in the data lake file system to be shared with the receiver.
  final String? folderPath;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? shareId;
  /// The resource ID of the storage account of the data lake file system to be shared with the receiver.
  final String? storageAccountId;

  /// Creates a new [GetDatasetDataLakeGen2Result].
  /// [displayName] The name of the Data Share Dataset.
  /// [filePath] The path of the file in the data lake file system to be shared with the receiver.
  /// [fileSystemName] The name of the data lake file system to be shared with the receiver.
  /// [folderPath] The folder path in the data lake file system to be shared with the receiver.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [shareId] Optional.
  /// [storageAccountId] The resource ID of the storage account of the data lake file system to be shared with the receiver.
  const GetDatasetDataLakeGen2Result({
    this.displayName,
    this.filePath,
    this.fileSystemName,
    this.folderPath,
    this.id,
    this.name,
    this.shareId,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'filePath': ?filePath,
      'fileSystemName': ?fileSystemName,
      'folderPath': ?folderPath,
      'id': ?id,
      'name': ?name,
      'shareId': ?shareId,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory GetDatasetDataLakeGen2Result.fromMap(Map<String, dynamic> map) {
    return GetDatasetDataLakeGen2Result(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemName: (() { final guardedValue = map['fileSystemName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
