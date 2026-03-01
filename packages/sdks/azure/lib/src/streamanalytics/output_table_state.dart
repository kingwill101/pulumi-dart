// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutputTable resources.
class OutputTableState {
  /// The number of records for a batch operation. Must be between `1` and `100`.
  final pulumi.Input<int>? batchSize;
  /// A list of the column names to be removed from output event entities.
  final pulumi.Input<List<String>>? columnsToRemoves;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the output column that contains the partition key.
  final pulumi.Input<String>? partitionKey;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the output column that contains the row key.
  final pulumi.Input<String>? rowKey;
  /// The Access Key which should be used to connect to this Storage Account.
  final pulumi.Input<String>? storageAccountKey;
  /// The name of the Storage Account.
  final pulumi.Input<String>? storageAccountName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;
  /// The name of the table where the stream should be output to.
  final pulumi.Input<String>? table;

  /// Creates a new [OutputTableState].
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
  OutputTableState({
    pulumi.Output<int>? batchSize,
    pulumi.Output<List<String>>? columnsToRemoves,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partitionKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? rowKey,
    pulumi.Output<String>? storageAccountKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<String>? streamAnalyticsJobName,
    pulumi.Output<String>? table,
  }) :
      batchSize = pulumi.Input.asOptionalInput<int>(batchSize),
      columnsToRemoves = pulumi.Input.asOptionalInput<List<String>>(columnsToRemoves),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionKey = pulumi.Input.asOptionalInput<String>(partitionKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      rowKey = pulumi.Input.asOptionalInput<String>(rowKey),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName),
      table = pulumi.Input.asOptionalInput<String>(table);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'columnsToRemoves': ?columnsToRemoves,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'resourceGroupName': ?resourceGroupName,
      'rowKey': ?rowKey,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
      'table': ?table,
    };
  }

  factory OutputTableState.fromMap(Map<String, dynamic> map) {
    return OutputTableState(
      batchSize: map['batchSize'] == null ? null : pulumi.Output.create<int>(map['batchSize'] as int),
      columnsToRemoves: map['columnsToRemoves'] == null ? null : pulumi.Output.create<List<String>>((map['columnsToRemoves'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionKey: map['partitionKey'] == null ? null : pulumi.Output.create<String>(map['partitionKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rowKey: map['rowKey'] == null ? null : pulumi.Output.create<String>(map['rowKey'] as String),
      storageAccountKey: map['storageAccountKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
      table: map['table'] == null ? null : pulumi.Output.create<String>(map['table'] as String),
    );
  }
}

