// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_dataset_data_lake_gen2_get_dataset_data_lake_gen2_args_doc}
/// Arguments for getDatasetDataLakeGen2.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_dataset_data_lake_gen2_get_dataset_data_lake_gen2_args_doc}
class GetDatasetDataLakeGen2Args {
  /// The name of this Data Share Data Lake Gen2 Dataset.
  final pulumi.Input<String> name;
  /// The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created.
  final pulumi.Input<String> shareId;

  /// Creates a new [GetDatasetDataLakeGen2Args].
  /// [name] The name of this Data Share Data Lake Gen2 Dataset.
  /// [shareId] The resource ID of the Data Share where this Data Share Data Lake Gen2 Dataset should be created.
  GetDatasetDataLakeGen2Args({
    required this.name,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'shareId': shareId,
    };
  }

  factory GetDatasetDataLakeGen2Args.fromMap(Map<String, dynamic> map) {
    return GetDatasetDataLakeGen2Args(
      name: (map['name'] as String).input(),
      shareId: (map['shareId'] as String).input(),
    );
  }
}

