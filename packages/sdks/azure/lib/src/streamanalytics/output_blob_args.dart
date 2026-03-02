// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_blob_serialization.dart';

/// {@template pulumi_streamanalytics_output_blob_output_blob_args_doc}
/// The set of arguments for OutputBlob.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_blob_output_blob_args_doc}
class OutputBlobArgs {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The maximum wait time per batch in `hh:mm:ss` e.g. `00:02:00` for two minutes.
  final pulumi.Input<String>? batchMaxWaitTime;
  /// The minimum number of rows per batch (must be between `0` and `1000000`).
  final pulumi.Input<int>? batchMinRows;
  /// Determines whether blob blocks are either committed automatically or appended. Possible values are `Append` and `Once`. Defaults to `Append`.
  final pulumi.Input<String>? blobWriteMode;
  /// The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  final pulumi.Input<String> dateFormat;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  final pulumi.Input<String> pathPattern;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<OutputBlobSerialization> serialization;
  /// The Access Key which should be used to connect to this Storage Account.
  final pulumi.Input<String>? storageAccountKey;
  /// The name of the Storage Account.
  final pulumi.Input<String> storageAccountName;
  /// The name of the Container within the Storage Account.
  final pulumi.Input<String> storageContainerName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;
  /// The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  final pulumi.Input<String> timeFormat;

  /// Creates a new [OutputBlobArgs].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [batchMaxWaitTime] The maximum wait time per batch in `hh:mm:ss` e.g. `00:02:00` for two minutes.
  /// [batchMinRows] The minimum number of rows per batch (must be between `0` and `1000000`).
  /// [blobWriteMode] Determines whether blob blocks are either committed automatically or appended. Possible values are `Append` and `Once`. Defaults to `Append`.
  /// [dateFormat] The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [pathPattern] The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [storageAccountKey] The Access Key which should be used to connect to this Storage Account.
  /// [storageAccountName] The name of the Storage Account.
  /// [storageContainerName] The name of the Container within the Storage Account.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [timeFormat] The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  OutputBlobArgs({
    this.authenticationMode,
    this.batchMaxWaitTime,
    this.batchMinRows,
    this.blobWriteMode,
    required this.dateFormat,
    this.name,
    required this.pathPattern,
    required this.resourceGroupName,
    required this.serialization,
    this.storageAccountKey,
    required this.storageAccountName,
    required this.storageContainerName,
    required this.streamAnalyticsJobName,
    required this.timeFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'batchMaxWaitTime': ?batchMaxWaitTime,
      'batchMinRows': ?batchMinRows,
      'blobWriteMode': ?blobWriteMode,
      'dateFormat': dateFormat,
      'name': ?name,
      'pathPattern': pathPattern,
      'resourceGroupName': resourceGroupName,
      'serialization': pulumi.Input.mapInputValue<OutputBlobSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': storageAccountName,
      'storageContainerName': storageContainerName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
      'timeFormat': timeFormat,
    };
  }

  factory OutputBlobArgs.fromMap(Map<String, dynamic> map) {
    return OutputBlobArgs(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode'] as String).input(),
      batchMaxWaitTime: map['batchMaxWaitTime'] == null ? null : (map['batchMaxWaitTime'] as String).input(),
      batchMinRows: map['batchMinRows'] == null ? null : (map['batchMinRows'] as int).input(),
      blobWriteMode: map['blobWriteMode'] == null ? null : (map['blobWriteMode'] as String).input(),
      dateFormat: (map['dateFormat'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pathPattern: (map['pathPattern'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serialization: (OutputBlobSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())).input(),
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      storageContainerName: (map['storageContainerName'] as String).input(),
      streamAnalyticsJobName: (map['streamAnalyticsJobName'] as String).input(),
      timeFormat: (map['timeFormat'] as String).input(),
    );
  }
}

