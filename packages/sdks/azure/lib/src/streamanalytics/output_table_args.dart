// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_output_table_output_table_args_doc}
/// The set of arguments for OutputTable.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_table_output_table_args_doc}
class OutputTableArgs {
  /// The number of records for a batch operation. Must be between `1` and `100`.
  final pulumi.Input<int> batchSize;
  /// A list of the column names to be removed from output event entities.
  final pulumi.Input<List<String>?>? columnsToRemoves;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the output column that contains the partition key.
  final pulumi.Input<String> partitionKey;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the output column that contains the row key.
  final pulumi.Input<String> rowKey;
  /// The Access Key which should be used to connect to this Storage Account.
  final pulumi.Input<String> storageAccountKey;
  /// The name of the Storage Account.
  final pulumi.Input<String> storageAccountName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;
  /// The name of the table where the stream should be output to.
  final pulumi.Input<String> table;

  /// Creates a new [OutputTableArgs].
  /// [batchSize] The number of records for a batch operation. Must be between `1` and `100`.
  /// [columnsToRemoves] A list of the column names to be removed from output event entities.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [partitionKey] The name of the output column that contains the partition key.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [rowKey] The name of the output column that contains the row key.
  /// [storageAccountKey] The Access Key which should be used to connect to this Storage Account.
  /// [storageAccountName] The name of the Storage Account.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] The name of the table where the stream should be output to.
  const OutputTableArgs({
    required this.batchSize,
    this.columnsToRemoves,
    this.name,
    required this.partitionKey,
    required this.resourceGroupName,
    required this.rowKey,
    required this.storageAccountKey,
    required this.storageAccountName,
    required this.streamAnalyticsJobName,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': batchSize,
      'columnsToRemoves': ?columnsToRemoves,
      'name': ?name,
      'partitionKey': partitionKey,
      'resourceGroupName': resourceGroupName,
      'rowKey': rowKey,
      'storageAccountKey': storageAccountKey,
      'storageAccountName': storageAccountName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
      'table': table,
    };
  }

  factory OutputTableArgs.fromMap(Map<String, dynamic> map) {
    return OutputTableArgs(
      batchSize: pulumi.Input.fromValue((map['batchSize'] as num).toInt()),
      columnsToRemoves: (() { final guardedValue = map['columnsToRemoves']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKey: pulumi.Input.fromValue(map['partitionKey'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rowKey: pulumi.Input.fromValue(map['rowKey'] as String),
      storageAccountKey: pulumi.Input.fromValue(map['storageAccountKey'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      streamAnalyticsJobName: pulumi.Input.fromValue(map['streamAnalyticsJobName'] as String),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
