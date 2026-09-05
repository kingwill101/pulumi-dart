// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_dataset_data_lake_gen2_dataset_data_lake_gen2_args_doc}
/// The set of arguments for DatasetDataLakeGen2.
/// {@endtemplate}
/// {@macro pulumi_datashare_dataset_data_lake_gen2_dataset_data_lake_gen2_args_doc}
class DatasetDataLakeGen2Args {
  /// The path of the file in the data lake file system to be shared with the receiver. Conflicts with `folderPath` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String?>? filePath;
  /// The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String> fileSystemName;
  /// The folder path in the data lake file system to be shared with the receiver. Conflicts with `filePath` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String?>? folderPath;
  /// The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String?>? name;
  /// The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String> shareId;
  /// The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [DatasetDataLakeGen2Args].
  /// [filePath] The path of the file in the data lake file system to be shared with the receiver. Conflicts with `folderPath` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [fileSystemName] The name of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [folderPath] The folder path in the data lake file system to be shared with the receiver. Conflicts with `filePath` Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [name] The name which should be used for this Data Share Data Lake Gen2 Dataset. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [shareId] The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  /// [storageAccountId] The resource id of the storage account of the data lake file system to be shared with the receiver. Changing this forces a new Data Share Data Lake Gen2 Dataset to be created.
  const DatasetDataLakeGen2Args({
    this.filePath,
    required this.fileSystemName,
    this.folderPath,
    this.name,
    required this.shareId,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
      'fileSystemName': fileSystemName,
      'folderPath': ?folderPath,
      'name': ?name,
      'shareId': shareId,
      'storageAccountId': storageAccountId,
    };
  }

  factory DatasetDataLakeGen2Args.fromMap(Map<String, dynamic> map) {
    return DatasetDataLakeGen2Args(
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemName: pulumi.Input.fromValue(map['fileSystemName'] as String),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}
