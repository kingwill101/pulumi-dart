// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_value.dart';

/// Definition for extended entitlement parameters.
class GoogleCloudChannelV1Parameter {
  /// Name of the parameter.
  final pulumi.Input<String>? name;
  /// Value of the parameter.
  final pulumi.Input<GoogleCloudChannelV1Value>? value;

  /// Creates a new [GoogleCloudChannelV1Parameter].
  /// [name] Name of the parameter.
  /// [value] Value of the parameter.
  GoogleCloudChannelV1Parameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1Value, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1Parameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1Parameter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudChannelV1Value.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

