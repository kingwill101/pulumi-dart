// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Azure Table output data source.
class AzureTableOutputDataSourceResponse {
  /// The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? accountKey;
  /// The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? accountName;
  /// The number of rows to write to the Azure Table at a time.
  final pulumi.Input<int>? batchSize;
  /// If specified, each item in the array is the name of a column to remove (if present) from output event entities.
  final pulumi.Input<List<String>>? columnsToRemove;
  /// This element indicates the name of a column from the SELECT statement in the query that will be used as the partition key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? partitionKey;
  /// This element indicates the name of a column from the SELECT statement in the query that will be used as the row key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? rowKey;
  /// The name of the Azure Table. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? table;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Storage/Table'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureTableOutputDataSourceResponse].
  /// [accountKey] The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [accountName] The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [batchSize] The number of rows to write to the Azure Table at a time.
  /// [columnsToRemove] If specified, each item in the array is the name of a column to remove (if present) from output event entities.
  /// [partitionKey] This element indicates the name of a column from the SELECT statement in the query that will be used as the partition key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  /// [rowKey] This element indicates the name of a column from the SELECT statement in the query that will be used as the row key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  /// [table] The name of the Azure Table. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  const AzureTableOutputDataSourceResponse({
    this.accountKey,
    this.accountName,
    this.batchSize,
    this.columnsToRemove,
    this.partitionKey,
    this.rowKey,
    this.table,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': ?accountName,
      'batchSize': ?batchSize,
      'columnsToRemove': ?columnsToRemove,
      'partitionKey': ?partitionKey,
      'rowKey': ?rowKey,
      'table': ?table,
      'type': type,
    };
  }

  factory AzureTableOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureTableOutputDataSourceResponse(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      columnsToRemove: (() { final guardedValue = map['columnsToRemove']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowKey: (() { final guardedValue = map['rowKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
