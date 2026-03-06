// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data type and value of a parameter.
class GoogleCloudChannelV1Value {
  /// Represents a boolean value.
  final pulumi.Input<bool>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double>? doubleValue;
  /// Represents an int64 value.
  final pulumi.Input<String>? int64Value;
  /// Represents an 'Any' proto value.
  final pulumi.Input<Map<String, String>>? protoValue;
  /// Represents a string value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [GoogleCloudChannelV1Value].
  /// [boolValue] Represents a boolean value.
  /// [doubleValue] Represents a double value.
  /// [int64Value] Represents an int64 value.
  /// [protoValue] Represents an 'Any' proto value.
  /// [stringValue] Represents a string value.
  const GoogleCloudChannelV1Value({
    this.boolValue,
    this.doubleValue,
    this.int64Value,
    this.protoValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'doubleValue': ?doubleValue,
      'int64Value': ?int64Value,
      'protoValue': ?protoValue,
      'stringValue': ?stringValue,
    };
  }

  factory GoogleCloudChannelV1Value.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1Value(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      int64Value: (() { final guardedValue = map['int64Value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protoValue: (() { final guardedValue = map['protoValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

