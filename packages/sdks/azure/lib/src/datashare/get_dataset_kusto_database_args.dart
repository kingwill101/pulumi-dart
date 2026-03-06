// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_dataset_kusto_database_get_dataset_kusto_database_args_doc}
/// Arguments for getDatasetKustoDatabase.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_dataset_kusto_database_get_dataset_kusto_database_args_doc}
class GetDatasetKustoDatabaseArgs {
  /// The name of this Data Share Kusto Database Dataset.
  final pulumi.Input<String> name;
  /// The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created.
  final pulumi.Input<String> shareId;

  /// Creates a new [GetDatasetKustoDatabaseArgs].
  /// [name] The name of this Data Share Kusto Database Dataset.
  /// [shareId] The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created.
  const GetDatasetKustoDatabaseArgs({
    required this.name,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'shareId': shareId,
    };
  }

  factory GetDatasetKustoDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetKustoDatabaseArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}

