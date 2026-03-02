// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date.dart';

/// Definition of a single value with generic type.
class Value {
  final pulumi.Input<bool>? booleanValue;
  final pulumi.Input<Date>? dateValue;
  final pulumi.Input<double>? doubleValue;
  final pulumi.Input<String>? integerValue;
  final pulumi.Input<String>? stringValue;
  final pulumi.Input<String>? timestampValue;

  /// Creates a new [Value].
  /// [booleanValue] Optional.
  /// [dateValue] Optional.
  /// [doubleValue] Optional.
  /// [integerValue] Optional.
  /// [stringValue] Optional.
  /// [timestampValue] Optional.
  Value({
    this.booleanValue,
    this.dateValue,
    this.doubleValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'dateValue': ?pulumi.Input.mapOptionalInputValue<Date, Map<String, dynamic>>(dateValue, (value) => value.toMap()),
      'doubleValue': ?doubleValue,
      'integerValue': ?integerValue,
      'stringValue': ?stringValue,
      'timestampValue': ?timestampValue,
    };
  }

  factory Value.fromMap(Map<String, dynamic> map) {
    return Value(
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue'] as bool).input(),
      dateValue: map['dateValue'] == null ? null : (Date.fromMap((map['dateValue'] as Map).cast<String, dynamic>())).input(),
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue'] as double).input(),
      integerValue: map['integerValue'] == null ? null : (map['integerValue'] as String).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue'] as String).input(),
      timestampValue: map['timestampValue'] == null ? null : (map['timestampValue'] as String).input(),
    );
  }
}

