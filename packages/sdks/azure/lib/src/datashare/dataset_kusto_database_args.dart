// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_dataset_kusto_database_dataset_kusto_database_args_doc}
/// The set of arguments for DatasetKustoDatabase.
/// {@endtemplate}
/// {@macro pulumi_datashare_dataset_kusto_database_dataset_kusto_database_args_doc}
class DatasetKustoDatabaseArgs {
  /// The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created.
  final pulumi.Input<String> kustoDatabaseId;

  /// The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created.
  final pulumi.Input<String>? name;

  /// The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created.
  final pulumi.Input<String> shareId;

  /// Creates a new [DatasetKustoDatabaseArgs].
  /// [kustoDatabaseId] The resource ID of the Kusto Cluster Database to be shared with the receiver. Changing this forces a new Data Share Kusto Database Dataset to be created.
  /// [name] The name which should be used for this Data Share Kusto Database Dataset. Changing this forces a new Data Share Kusto Database Dataset to be created.
  /// [shareId] The resource ID of the Data Share where this Data Share Kusto Database Dataset should be created. Changing this forces a new Data Share Kusto Database Dataset to be created.
  DatasetKustoDatabaseArgs({
    required this.kustoDatabaseId,
    this.name,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoDatabaseId': kustoDatabaseId,
      'name': ?name,
      'shareId': shareId,
    };
  }

  factory DatasetKustoDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatasetKustoDatabaseArgs(
      kustoDatabaseId: pulumi.Input.fromValue(map['kustoDatabaseId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}
