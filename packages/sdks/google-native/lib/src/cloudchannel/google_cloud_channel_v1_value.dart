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
  GoogleCloudChannelV1Value({
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
      boolValue: map['boolValue'] == null ? null : (map['boolValue'] as bool).input(),
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue'] as double).input(),
      int64Value: map['int64Value'] == null ? null : (map['int64Value'] as String).input(),
      protoValue: map['protoValue'] == null ? null : ((map['protoValue'] as Map).cast<String, String>()).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
    );
  }
}

