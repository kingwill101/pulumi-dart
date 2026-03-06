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
  const Value({
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
      booleanValue: (() { final guardedValue = map['booleanValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dateValue: (() { final guardedValue = map['dateValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Date.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      integerValue: (() { final guardedValue = map['integerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampValue: (() { final guardedValue = map['timestampValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

