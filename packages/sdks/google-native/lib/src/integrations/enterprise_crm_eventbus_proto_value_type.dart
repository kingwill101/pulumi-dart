// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_double_array.dart';
import 'enterprise_crm_eventbus_proto_int_array.dart';
import 'enterprise_crm_eventbus_proto_string_array.dart';

/// Used for define type for values. Currently supported value types include int, string, double, array, and any proto message.
class EnterpriseCrmEventbusProtoValueType {
  final bool? booleanValue;
  final EnterpriseCrmEventbusProtoDoubleArray? doubleArray;
  final double? doubleValue;
  final EnterpriseCrmEventbusProtoIntArray? intArray;
  final String? intValue;
  final Map<String, String>? protoValue;
  final EnterpriseCrmEventbusProtoStringArray? stringArray;
  final String? stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoValueType].
  /// [booleanValue] Optional.
  /// [doubleArray] Optional.
  /// [doubleValue] Optional.
  /// [intArray] Optional.
  /// [intValue] Optional.
  /// [protoValue] Optional.
  /// [stringArray] Optional.
  /// [stringValue] Optional.
  EnterpriseCrmEventbusProtoValueType({
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.protoValue,
    this.stringArray,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'doubleArray': ?doubleArray == null ? null : doubleArray!.toMap(),
      'doubleValue': ?doubleValue,
      'intArray': ?intArray == null ? null : intArray!.toMap(),
      'intValue': ?intValue,
      'protoValue': ?protoValue,
      'stringArray': ?stringArray == null ? null : stringArray!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoValueType.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoValueType(
      booleanValue: map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      doubleArray: map['doubleArray'] == null ? null : EnterpriseCrmEventbusProtoDoubleArray.fromMap((map['doubleArray'] as Map).cast<String, dynamic>()),
      doubleValue: map['doubleValue'] == null ? null : map['doubleValue'] as double,
      intArray: map['intArray'] == null ? null : EnterpriseCrmEventbusProtoIntArray.fromMap((map['intArray'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      protoValue: map['protoValue'] == null ? null : (map['protoValue'] as Map).cast<String, String>(),
      stringArray: map['stringArray'] == null ? null : EnterpriseCrmEventbusProtoStringArray.fromMap((map['stringArray'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}

