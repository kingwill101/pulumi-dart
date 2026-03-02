// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the metadata of AzureFunctionOutputDataSource
class AzureFunctionOutputDataSourceResponse {
  /// If you want to use an Azure Function from another subscription, you can do so by providing the key to access your function.
  final pulumi.Input<String>? apiKey;
  /// The name of your Azure Functions app.
  final pulumi.Input<String>? functionAppName;
  /// The name of the function in your Azure Functions app.
  final pulumi.Input<String>? functionName;
  /// A property that lets you specify the maximum number of events in each batch that's sent to Azure Functions. The default value is 100.
  final pulumi.Input<double>? maxBatchCount;
  /// A property that lets you set the maximum size for each output batch that's sent to your Azure function. The input unit is in bytes. By default, this value is 262,144 bytes (256 KB).
  final pulumi.Input<double>? maxBatchSize;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.AzureFunction'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureFunctionOutputDataSourceResponse].
  /// [apiKey] If you want to use an Azure Function from another subscription, you can do so by providing the key to access your function.
  /// [functionAppName] The name of your Azure Functions app.
  /// [functionName] The name of the function in your Azure Functions app.
  /// [maxBatchCount] A property that lets you specify the maximum number of events in each batch that's sent to Azure Functions. The default value is 100.
  /// [maxBatchSize] A property that lets you set the maximum size for each output batch that's sent to your Azure function. The input unit is in bytes. By default, this value is 262,144 bytes (256 KB).
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  AzureFunctionOutputDataSourceResponse({
    this.apiKey,
    this.functionAppName,
    this.functionName,
    this.maxBatchCount,
    this.maxBatchSize,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'functionAppName': ?functionAppName,
      'functionName': ?functionName,
      'maxBatchCount': ?maxBatchCount,
      'maxBatchSize': ?maxBatchSize,
      'type': type,
    };
  }

  factory AzureFunctionOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureFunctionOutputDataSourceResponse(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
      functionAppName: map['functionAppName'] == null ? null : (map['functionAppName']! as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName']! as String).input(),
      maxBatchCount: map['maxBatchCount'] == null ? null : (map['maxBatchCount']! as double).input(),
      maxBatchSize: map['maxBatchSize'] == null ? null : (map['maxBatchSize']! as double).input(),
      type: (map['type'] as String).input(),
    );
  }
}

