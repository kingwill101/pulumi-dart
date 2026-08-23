// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_input_blob_serialization.dart';

/// Input properties used for looking up and filtering StreamInputBlob resources.
class StreamInputBlobState {
  /// The authentication mode for the Stream Analytics Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The date format. Wherever `{date}` appears in `pathPattern`, the value of this property is used as the date format instead.
  final pulumi.Input<String>? dateFormat;
  /// The name of the Stream Input Blob. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  final pulumi.Input<String>? pathPattern;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<StreamInputBlobSerialization>? serialization;
  /// The Access Key which should be used to connect to this Storage Account.
  final pulumi.Input<String>? storageAccountKey;
  /// The name of the Storage Account.
  final pulumi.Input<String>? storageAccountName;
  /// The name of the Container within the Storage Account.
  final pulumi.Input<String>? storageContainerName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;
  /// The time format. Wherever `{time}` appears in `pathPattern`, the value of this property is used as the time format instead.
  final pulumi.Input<String>? timeFormat;

  /// Creates a new [StreamInputBlobState].
  /// [authenticationMode] The authentication mode for the Stream Analytics Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [dateFormat] The date format. Wherever `{date}` appears in `pathPattern`, the value of this property is used as the date format instead.
  /// [name] The name of the Stream Input Blob. Changing this forces a new resource to be created.
  /// [pathPattern] The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [storageAccountKey] The Access Key which should be used to connect to this Storage Account.
  /// [storageAccountName] The name of the Storage Account.
  /// [storageContainerName] The name of the Container within the Storage Account.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [timeFormat] The time format. Wherever `{time}` appears in `pathPattern`, the value of this property is used as the time format instead.
  const StreamInputBlobState({
    this.authenticationMode,
    this.dateFormat,
    this.name,
    this.pathPattern,
    this.resourceGroupName,
    this.serialization,
    this.storageAccountKey,
    this.storageAccountName,
    this.storageContainerName,
    this.streamAnalyticsJobName,
    this.timeFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'dateFormat': ?dateFormat,
      'name': ?name,
      'pathPattern': ?pathPattern,
      'resourceGroupName': ?resourceGroupName,
      'serialization': ?pulumi.Input.mapOptionalInputValue<StreamInputBlobSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
      'storageContainerName': ?storageContainerName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
      'timeFormat': ?timeFormat,
    };
  }

  factory StreamInputBlobState.fromMap(Map<String, dynamic> map) {
    return StreamInputBlobState(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dateFormat: (() { final guardedValue = map['dateFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathPattern: (() { final guardedValue = map['pathPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialization: (() { final guardedValue = map['serialization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamInputBlobSerialization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountKey: (() { final guardedValue = map['storageAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobName: (() { final guardedValue = map['streamAnalyticsJobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeFormat: (() { final guardedValue = map['timeFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
