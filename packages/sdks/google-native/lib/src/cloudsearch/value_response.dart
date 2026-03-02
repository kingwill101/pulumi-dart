// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'date_response.dart';

/// Definition of a single value with generic type.
class ValueResponse {
  final pulumi.Input<bool> booleanValue;
  final pulumi.Input<DateResponse> dateValue;
  final pulumi.Input<double> doubleValue;
  final pulumi.Input<String> integerValue;
  final pulumi.Input<String> stringValue;
  final pulumi.Input<String> timestampValue;

  /// Creates a new [ValueResponse].
  /// [booleanValue] Required.
  /// [dateValue] Required.
  /// [doubleValue] Required.
  /// [integerValue] Required.
  /// [stringValue] Required.
  /// [timestampValue] Required.
  ValueResponse({
    required this.booleanValue,
    required this.dateValue,
    required this.doubleValue,
    required this.integerValue,
    required this.stringValue,
    required this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': booleanValue,
      'dateValue': pulumi.Input.mapInputValue<DateResponse, Map<String, dynamic>>(dateValue, (value) => value.toMap()),
      'doubleValue': doubleValue,
      'integerValue': integerValue,
      'stringValue': stringValue,
      'timestampValue': timestampValue,
    };
  }

  factory ValueResponse.fromMap(Map<String, dynamic> map) {
    return ValueResponse(
      booleanValue: (map['booleanValue'] as bool).input(),
      dateValue: (DateResponse.fromMap((map['dateValue'] as Map).cast<String, dynamic>())).input(),
      doubleValue: (map['doubleValue'] as double).input(),
      integerValue: (map['integerValue'] as String).input(),
      stringValue: (map['stringValue'] as String).input(),
      timestampValue: (map['timestampValue'] as String).input(),
    );
  }
}

