// ignore_for_file: unused_element, unnecessary_cast


/// Describes an Azure Table output data source.
class AzureTableOutputDataSource {
  /// The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final String? accountKey;
  /// The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final String? accountName;
  /// The number of rows to write to the Azure Table at a time.
  final int? batchSize;
  /// If specified, each item in the array is the name of a column to remove (if present) from output event entities.
  final List<String>? columnsToRemove;
  /// This element indicates the name of a column from the SELECT statement in the query that will be used as the partition key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  final String? partitionKey;
  /// This element indicates the name of a column from the SELECT statement in the query that will be used as the row key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  final String? rowKey;
  /// The name of the Azure Table. Required on PUT (CreateOrReplace) requests.
  final String? table;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Storage/Table'.
  final String type;

  /// Creates a new [AzureTableOutputDataSource].
  /// [accountKey] The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [accountName] The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [batchSize] The number of rows to write to the Azure Table at a time.
  /// [columnsToRemove] If specified, each item in the array is the name of a column to remove (if present) from output event entities.
  /// [partitionKey] This element indicates the name of a column from the SELECT statement in the query that will be used as the partition key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  /// [rowKey] This element indicates the name of a column from the SELECT statement in the query that will be used as the row key for the Azure Table. Required on PUT (CreateOrReplace) requests.
  /// [table] The name of the Azure Table. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  AzureTableOutputDataSource({
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

  factory AzureTableOutputDataSource.fromMap(Map<String, dynamic> map) {
    return AzureTableOutputDataSource(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      columnsToRemove: map['columnsToRemove'] == null ? null : (map['columnsToRemove'] as List).cast<String>(),
      partitionKey: map['partitionKey'] == null ? null : map['partitionKey'] as String,
      rowKey: map['rowKey'] == null ? null : map['rowKey'] as String,
      table: map['table'] == null ? null : map['table'] as String,
      type: map['type'] as String,
    );
  }
}

