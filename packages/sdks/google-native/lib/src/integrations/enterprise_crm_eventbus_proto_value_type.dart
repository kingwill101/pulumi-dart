// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_double_array.dart';
import 'enterprise_crm_eventbus_proto_int_array.dart';
import 'enterprise_crm_eventbus_proto_string_array.dart';

/// Used for define type for values. Currently supported value types include int, string, double, array, and any proto message.
class EnterpriseCrmEventbusProtoValueType {
  final pulumi.Input<bool>? booleanValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoDoubleArray>? doubleArray;
  final pulumi.Input<double>? doubleValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoIntArray>? intArray;
  final pulumi.Input<String>? intValue;
  final pulumi.Input<Map<String, String>>? protoValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoStringArray>? stringArray;
  final pulumi.Input<String>? stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoValueType].
  /// [booleanValue] Optional.
  /// [doubleArray] Optional.
  /// [doubleValue] Optional.
  /// [intArray] Optional.
  /// [intValue] Optional.
  /// [protoValue] Optional.
  /// [stringArray] Optional.
  /// [stringValue] Optional.
  const EnterpriseCrmEventbusProtoValueType({
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
      'doubleArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoDoubleArray, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': ?doubleValue,
      'intArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoIntArray, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': ?intValue,
      'protoValue': ?protoValue,
      'stringArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoStringArray, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoValueType.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoValueType(
      booleanValue: (() { final guardedValue = map['booleanValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      doubleArray: (() { final guardedValue = map['doubleArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoDoubleArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      intArray: (() { final guardedValue = map['intArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoIntArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intValue: (() { final guardedValue = map['intValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protoValue: (() { final guardedValue = map['protoValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stringArray: (() { final guardedValue = map['stringArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoStringArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

