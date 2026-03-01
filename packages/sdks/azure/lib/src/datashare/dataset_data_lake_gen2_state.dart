// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatasetDataLakeGen2 resources.
class DatasetDataLakeGen2State {
  /// The name of the Data Share Dataset.
  final pulumi.Input<String>? displayName;
  /// The path of the file in the data lake file system to be shared with the receiver. Conflicts with `folder_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String>? filePath;
  /// The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String>? fileSystemName;
  /// The folder path in the data lake file system to be shared with the receiver. Conflicts with `file_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String>? folderPath;
  /// The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String>? shareId;
  /// The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [DatasetDataLakeGen2State].
  /// [displayName] The name of the Data Share Dataset.
  /// [filePath] The path of the file in the data lake file system to be shared with the receiver. Conflicts with `folder_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [fileSystemName] The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [folderPath] The folder path in the data lake file system to be shared with the receiver. Conflicts with `file_path` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [name] The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [shareId] The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [storageAccountId] The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  DatasetDataLakeGen2State({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? filePath,
    pulumi.Output<String>? fileSystemName,
    pulumi.Output<String>? folderPath,
    pulumi.Output<String>? name,
    pulumi.Output<String>? shareId,
    pulumi.Output<String>? storageAccountId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      filePath = pulumi.Input.asOptionalInput<String>(filePath),
      fileSystemName = pulumi.Input.asOptionalInput<String>(fileSystemName),
      folderPath = pulumi.Input.asOptionalInput<String>(folderPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      shareId = pulumi.Input.asOptionalInput<String>(shareId),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'filePath': ?filePath,
      'fileSystemName': ?fileSystemName,
      'folderPath': ?folderPath,
      'name': ?name,
      'shareId': ?shareId,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory DatasetDataLakeGen2State.fromMap(Map<String, dynamic> map) {
    return DatasetDataLakeGen2State(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      filePath: map['filePath'] == null ? null : pulumi.Output.create<String>(map['filePath'] as String),
      fileSystemName: map['fileSystemName'] == null ? null : pulumi.Output.create<String>(map['fileSystemName'] as String),
      folderPath: map['folderPath'] == null ? null : pulumi.Output.create<String>(map['folderPath'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

