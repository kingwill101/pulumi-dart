// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_boolean_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_double_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_int_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_proto_parameter_array.dart';
import 'enterprise_crm_frontends_eventbus_proto_serialized_object_parameter.dart';
import 'enterprise_crm_frontends_eventbus_proto_string_parameter_array.dart';

/// To support various types of parameter values. Next available id: 14
class EnterpriseCrmFrontendsEventbusProtoParameterValueType {
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray>? booleanArray;
  final pulumi.Input<bool>? booleanValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray>? doubleArray;
  final pulumi.Input<double>? doubleValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoIntParameterArray>? intArray;
  final pulumi.Input<String>? intValue;
  final pulumi.Input<String>? jsonValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoProtoParameterArray>? protoArray;
  final pulumi.Input<Map<String, String>>? protoValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter>? serializedObjectValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoStringParameterArray>? stringArray;
  final pulumi.Input<String>? stringValue;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParameterValueType].
  /// [booleanArray] Optional.
  /// [booleanValue] Optional.
  /// [doubleArray] Optional.
  /// [doubleValue] Optional.
  /// [intArray] Optional.
  /// [intValue] Optional.
  /// [jsonValue] Optional.
  /// [protoArray] Optional.
  /// [protoValue] Optional.
  /// [serializedObjectValue] Optional.
  /// [stringArray] Optional.
  /// [stringValue] Optional.
  const EnterpriseCrmFrontendsEventbusProtoParameterValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.jsonValue,
    this.protoArray,
    this.protoValue,
    this.serializedObjectValue,
    this.stringArray,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray, Map<String, dynamic>>(booleanArray, (value) => value.toMap()),
      'booleanValue': ?booleanValue,
      'doubleArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': ?doubleValue,
      'intArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoIntParameterArray, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': ?intValue,
      'jsonValue': ?jsonValue,
      'protoArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoProtoParameterArray, Map<String, dynamic>>(protoArray, (value) => value.toMap()),
      'protoValue': ?protoValue,
      'serializedObjectValue': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter, Map<String, dynamic>>(serializedObjectValue, (value) => value.toMap()),
      'stringArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmFrontendsEventbusProtoStringParameterArray, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParameterValueType(
      booleanArray: (() { final guardedValue = map['booleanArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      booleanValue: (() { final guardedValue = map['booleanValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      doubleArray: (() { final guardedValue = map['doubleArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      intArray: (() { final guardedValue = map['intArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoIntParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intValue: (() { final guardedValue = map['intValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jsonValue: (() { final guardedValue = map['jsonValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protoArray: (() { final guardedValue = map['protoArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protoValue: (() { final guardedValue = map['protoValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serializedObjectValue: (() { final guardedValue = map['serializedObjectValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringArray: (() { final guardedValue = map['stringArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

