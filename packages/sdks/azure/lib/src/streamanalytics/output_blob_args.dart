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
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? batchMaxWaitTime,
    pulumi.Output<int>? batchMinRows,
    pulumi.Output<String>? blobWriteMode,
    required pulumi.Output<String> dateFormat,
    pulumi.Output<String>? name,
    required pulumi.Output<String> pathPattern,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<OutputBlobSerialization> serialization,
    pulumi.Output<String>? storageAccountKey,
    required pulumi.Output<String> storageAccountName,
    required pulumi.Output<String> storageContainerName,
    required pulumi.Output<String> streamAnalyticsJobName,
    required pulumi.Output<String> timeFormat,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      batchMaxWaitTime = pulumi.Input.asOptionalInput<String>(batchMaxWaitTime),
      batchMinRows = pulumi.Input.asOptionalInput<int>(batchMinRows),
      blobWriteMode = pulumi.Input.asOptionalInput<String>(blobWriteMode),
      dateFormat = pulumi.Input.asInput<String>(dateFormat),
      name = pulumi.Input.asOptionalInput<String>(name),
      pathPattern = pulumi.Input.asInput<String>(pathPattern),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialization = pulumi.Input.asInput<OutputBlobSerialization>(serialization),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      storageContainerName = pulumi.Input.asInput<String>(storageContainerName),
      streamAnalyticsJobName = pulumi.Input.asInput<String>(streamAnalyticsJobName),
      timeFormat = pulumi.Input.asInput<String>(timeFormat);

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
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      batchMaxWaitTime: map['batchMaxWaitTime'] == null ? null : pulumi.Output.create<String>(map['batchMaxWaitTime'] as String),
      batchMinRows: map['batchMinRows'] == null ? null : pulumi.Output.create<int>(map['batchMinRows'] as int),
      blobWriteMode: map['blobWriteMode'] == null ? null : pulumi.Output.create<String>(map['blobWriteMode'] as String),
      dateFormat: pulumi.Output.create<String>(map['dateFormat'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pathPattern: pulumi.Output.create<String>(map['pathPattern'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serialization: pulumi.Output.create<OutputBlobSerialization>(OutputBlobSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())),
      storageAccountKey: map['storageAccountKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountKey'] as String),
      storageAccountName: pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageContainerName: pulumi.Output.create<String>(map['storageContainerName'] as String),
      streamAnalyticsJobName: pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
      timeFormat: pulumi.Output.create<String>(map['timeFormat'] as String),
    );
  }
}

