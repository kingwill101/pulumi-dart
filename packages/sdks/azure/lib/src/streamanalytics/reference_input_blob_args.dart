// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_input_blob_serialization.dart';

/// {@template pulumi_streamanalytics_reference_input_blob_reference_input_blob_args_doc}
/// The set of arguments for ReferenceInputBlob.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_reference_input_blob_reference_input_blob_args_doc}
class ReferenceInputBlobArgs {
  /// The authentication mode for the Stream Analytics Reference Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  final pulumi.Input<String> dateFormat;
  /// The name of the Reference Input Blob. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  final pulumi.Input<String> pathPattern;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<ReferenceInputBlobSerialization> serialization;
  /// The Access Key which should be used to connect to this Storage Account. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? storageAccountKey;
  /// The name of the Storage Account that has the blob container with reference data.
  final pulumi.Input<String> storageAccountName;
  /// The name of the Container within the Storage Account.
  final pulumi.Input<String> storageContainerName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;
  /// The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  final pulumi.Input<String> timeFormat;

  /// Creates a new [ReferenceInputBlobArgs].
  /// [authenticationMode] The authentication mode for the Stream Analytics Reference Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [dateFormat] The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  /// [name] The name of the Reference Input Blob. Changing this forces a new resource to be created.
  /// [pathPattern] The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [storageAccountKey] The Access Key which should be used to connect to this Storage Account. Required if `authentication_mode` is `ConnectionString`.
  /// [storageAccountName] The name of the Storage Account that has the blob container with reference data.
  /// [storageContainerName] The name of the Container within the Storage Account.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [timeFormat] The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  ReferenceInputBlobArgs({
    this.authenticationMode,
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
      'dateFormat': dateFormat,
      'name': ?name,
      'pathPattern': pathPattern,
      'resourceGroupName': resourceGroupName,
      'serialization': pulumi.Input.mapInputValue<ReferenceInputBlobSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': storageAccountName,
      'storageContainerName': storageContainerName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
      'timeFormat': timeFormat,
    };
  }

  factory ReferenceInputBlobArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceInputBlobArgs(
      authenticationMode: map['authenticationMode'] == null ? null : (map['authenticationMode'] as String).input(),
      dateFormat: (map['dateFormat'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pathPattern: (map['pathPattern'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serialization: (ReferenceInputBlobSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())).input(),
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      storageContainerName: (map['storageContainerName'] as String).input(),
      streamAnalyticsJobName: (map['streamAnalyticsJobName'] as String).input(),
      timeFormat: (map['timeFormat'] as String).input(),
    );
  }
}

