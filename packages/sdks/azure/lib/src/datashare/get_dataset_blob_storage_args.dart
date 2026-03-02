// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_dataset_blob_storage_get_dataset_blob_storage_args_doc}
/// Arguments for getDatasetBlobStorage.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_dataset_blob_storage_get_dataset_blob_storage_args_doc}
class GetDatasetBlobStorageArgs {
  /// The ID of the Data Share in which this Data Share Blob Storage Dataset should be created.
  final pulumi.Input<String> dataShareId;
  /// The name of this Data Share Blob Storage Dataset.
  final pulumi.Input<String> name;

  /// Creates a new [GetDatasetBlobStorageArgs].
  /// [dataShareId] The ID of the Data Share in which this Data Share Blob Storage Dataset should be created.
  /// [name] The name of this Data Share Blob Storage Dataset.
  GetDatasetBlobStorageArgs({
    required this.dataShareId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataShareId': dataShareId,
      'name': name,
    };
  }

  factory GetDatasetBlobStorageArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetBlobStorageArgs(
      dataShareId: (map['dataShareId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

