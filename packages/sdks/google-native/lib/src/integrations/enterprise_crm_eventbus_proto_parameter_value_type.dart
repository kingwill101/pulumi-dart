// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_boolean_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_double_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_int_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_proto_parameter_array.dart';
import 'enterprise_crm_eventbus_proto_serialized_object_parameter.dart';
import 'enterprise_crm_eventbus_proto_string_parameter_array.dart';

/// LINT.IfChange To support various types of parameter values. Next available id: 14
class EnterpriseCrmEventbusProtoParameterValueType {
  final pulumi.Input<EnterpriseCrmEventbusProtoBooleanParameterArray>?
  booleanArray;
  final pulumi.Input<bool>? booleanValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoDoubleParameterArray>?
  doubleArray;
  final pulumi.Input<double>? doubleValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoIntParameterArray>? intArray;
  final pulumi.Input<String>? intValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoProtoParameterArray>? protoArray;
  final pulumi.Input<Map<String, String>>? protoValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoSerializedObjectParameter>?
  serializedObjectValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoStringParameterArray>?
  stringArray;
  final pulumi.Input<String>? stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoParameterValueType].
  /// [booleanArray] Optional.
  /// [booleanValue] Optional.
  /// [doubleArray] Optional.
  /// [doubleValue] Optional.
  /// [intArray] Optional.
  /// [intValue] Optional.
  /// [protoArray] Optional.
  /// [protoValue] Optional.
  /// [serializedObjectValue] Optional.
  /// [stringArray] Optional.
  /// [stringValue] Optional.
  EnterpriseCrmEventbusProtoParameterValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.protoArray,
    this.protoValue,
    this.serializedObjectValue,
    this.stringArray,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoBooleanParameterArray,
            Map<String, dynamic>
          >(booleanArray, (value) => value.toMap()),
      'booleanValue': ?booleanValue,
      'doubleArray':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoDoubleParameterArray,
            Map<String, dynamic>
          >(doubleArray, (value) => value.toMap()),
      'doubleValue': ?doubleValue,
      'intArray':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoIntParameterArray,
            Map<String, dynamic>
          >(intArray, (value) => value.toMap()),
      'intValue': ?intValue,
      'protoArray':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoProtoParameterArray,
            Map<String, dynamic>
          >(protoArray, (value) => value.toMap()),
      'protoValue': ?protoValue,
      'serializedObjectValue':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoSerializedObjectParameter,
            Map<String, dynamic>
          >(serializedObjectValue, (value) => value.toMap()),
      'stringArray':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoStringParameterArray,
            Map<String, dynamic>
          >(stringArray, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoParameterValueType.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParameterValueType(
      booleanArray: (() {
        final guardedValue = map['booleanArray'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoBooleanParameterArray.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      booleanValue: (() {
        final guardedValue = map['booleanValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      doubleArray: (() {
        final guardedValue = map['doubleArray'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoDoubleParameterArray.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      doubleValue: (() {
        final guardedValue = map['doubleValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      intArray: (() {
        final guardedValue = map['intArray'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoIntParameterArray.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      intValue: (() {
        final guardedValue = map['intValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protoArray: (() {
        final guardedValue = map['protoArray'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoProtoParameterArray.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      protoValue: (() {
        final guardedValue = map['protoValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      serializedObjectValue: (() {
        final guardedValue = map['serializedObjectValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoSerializedObjectParameter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stringArray: (() {
        final guardedValue = map['stringArray'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoStringParameterArray.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stringValue: (() {
        final guardedValue = map['stringValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
