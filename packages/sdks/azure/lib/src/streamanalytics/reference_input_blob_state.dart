// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_input_blob_serialization.dart';

/// Input properties used for looking up and filtering ReferenceInputBlob resources.
class ReferenceInputBlobState {
  /// The authentication mode for the Stream Analytics Reference Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead.
  final pulumi.Input<String>? dateFormat;
  /// The name of the Reference Input Blob. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  final pulumi.Input<String>? pathPattern;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<ReferenceInputBlobSerialization>? serialization;
  /// The Access Key which should be used to connect to this Storage Account. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? storageAccountKey;
  /// The name of the Storage Account that has the blob container with reference data.
  final pulumi.Input<String>? storageAccountName;
  /// The name of the Container within the Storage Account.
  final pulumi.Input<String>? storageContainerName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;
  /// The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead.
  final pulumi.Input<String>? timeFormat;

  /// Creates a new [ReferenceInputBlobState].
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
  ReferenceInputBlobState({
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? dateFormat,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pathPattern,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<ReferenceInputBlobSerialization>? serialization,
    pulumi.Output<String>? storageAccountKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<String>? storageContainerName,
    pulumi.Output<String>? streamAnalyticsJobName,
    pulumi.Output<String>? timeFormat,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      dateFormat = pulumi.Input.asOptionalInput<String>(dateFormat),
      name = pulumi.Input.asOptionalInput<String>(name),
      pathPattern = pulumi.Input.asOptionalInput<String>(pathPattern),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serialization = pulumi.Input.asOptionalInput<ReferenceInputBlobSerialization>(serialization),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageContainerName = pulumi.Input.asOptionalInput<String>(storageContainerName),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName),
      timeFormat = pulumi.Input.asOptionalInput<String>(timeFormat);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'dateFormat': ?dateFormat,
      'name': ?name,
      'pathPattern': ?pathPattern,
      'resourceGroupName': ?resourceGroupName,
      'serialization': ?pulumi.Input.mapOptionalInputValue<ReferenceInputBlobSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
      'storageContainerName': ?storageContainerName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
      'timeFormat': ?timeFormat,
    };
  }

  factory ReferenceInputBlobState.fromMap(Map<String, dynamic> map) {
    return ReferenceInputBlobState(
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      dateFormat: map['dateFormat'] == null ? null : pulumi.Output.create<String>(map['dateFormat'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pathPattern: map['pathPattern'] == null ? null : pulumi.Output.create<String>(map['pathPattern'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serialization: map['serialization'] == null ? null : pulumi.Output.create<ReferenceInputBlobSerialization>(ReferenceInputBlobSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())),
      storageAccountKey: map['storageAccountKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageContainerName: map['storageContainerName'] == null ? null : pulumi.Output.create<String>(map['storageContainerName'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
      timeFormat: map['timeFormat'] == null ? null : pulumi.Output.create<String>(map['timeFormat'] as String),
    );
  }
}

