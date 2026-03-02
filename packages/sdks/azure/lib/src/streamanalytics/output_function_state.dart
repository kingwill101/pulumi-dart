// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutputFunction resources.
class OutputFunctionState {
  /// The API key for the Function.
  final pulumi.Input<String>? apiKey;
  /// The maximum number of events in each batch that's sent to the function. Defaults to `100`.
  final pulumi.Input<int>? batchMaxCount;
  /// The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB).
  final pulumi.Input<int>? batchMaxInBytes;
  /// The name of the Function App.
  final pulumi.Input<String>? functionApp;
  /// The name of the function in the Function App.
  final pulumi.Input<String>? functionName;
  /// The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;

  /// Creates a new [OutputFunctionState].
  /// [apiKey] The API key for the Function.
  /// [batchMaxCount] The maximum number of events in each batch that's sent to the function. Defaults to `100`.
  /// [batchMaxInBytes] The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB).
  /// [functionApp] The name of the Function App.
  /// [functionName] The name of the function in the Function App.
  /// [name] The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  OutputFunctionState({
    this.apiKey,
    this.batchMaxCount,
    this.batchMaxInBytes,
    this.functionApp,
    this.functionName,
    this.name,
    this.resourceGroupName,
    this.streamAnalyticsJobName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'batchMaxCount': ?batchMaxCount,
      'batchMaxInBytes': ?batchMaxInBytes,
      'functionApp': ?functionApp,
      'functionName': ?functionName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
    };
  }

  factory OutputFunctionState.fromMap(Map<String, dynamic> map) {
    return OutputFunctionState(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      batchMaxCount: map['batchMaxCount'] == null ? null : (map['batchMaxCount'] as int).input(),
      batchMaxInBytes: map['batchMaxInBytes'] == null ? null : (map['batchMaxInBytes'] as int).input(),
      functionApp: map['functionApp'] == null ? null : (map['functionApp'] as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : (map['streamAnalyticsJobName'] as String).input(),
    );
  }
}

