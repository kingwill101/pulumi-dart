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
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      batchMaxCount: (() {
        final guardedValue = map['batchMaxCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      batchMaxInBytes: (() {
        final guardedValue = map['batchMaxInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      functionApp: (() {
        final guardedValue = map['functionApp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionName: (() {
        final guardedValue = map['functionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamAnalyticsJobName: (() {
        final guardedValue = map['streamAnalyticsJobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
