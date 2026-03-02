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
  final pulumi.Input<EnterpriseCrmEventbusProtoBooleanParameterArray>? booleanArray;
  final pulumi.Input<bool>? booleanValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoDoubleParameterArray>? doubleArray;
  final pulumi.Input<double>? doubleValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoIntParameterArray>? intArray;
  final pulumi.Input<String>? intValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoProtoParameterArray>? protoArray;
  final pulumi.Input<Map<String, String>>? protoValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoSerializedObjectParameter>? serializedObjectValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoStringParameterArray>? stringArray;
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
      'booleanArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoBooleanParameterArray, Map<String, dynamic>>(booleanArray, (value) => value.toMap()),
      'booleanValue': ?booleanValue,
      'doubleArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoDoubleParameterArray, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': ?doubleValue,
      'intArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoIntParameterArray, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': ?intValue,
      'protoArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoProtoParameterArray, Map<String, dynamic>>(protoArray, (value) => value.toMap()),
      'protoValue': ?protoValue,
      'serializedObjectValue': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoSerializedObjectParameter, Map<String, dynamic>>(serializedObjectValue, (value) => value.toMap()),
      'stringArray': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoStringParameterArray, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoParameterValueType.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParameterValueType(
      booleanArray: map['booleanArray'] == null ? null : (EnterpriseCrmEventbusProtoBooleanParameterArray.fromMap((map['booleanArray']! as Map).cast<String, dynamic>())).input(),
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue']! as bool).input(),
      doubleArray: map['doubleArray'] == null ? null : (EnterpriseCrmEventbusProtoDoubleParameterArray.fromMap((map['doubleArray']! as Map).cast<String, dynamic>())).input(),
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue']! as double).input(),
      intArray: map['intArray'] == null ? null : (EnterpriseCrmEventbusProtoIntParameterArray.fromMap((map['intArray']! as Map).cast<String, dynamic>())).input(),
      intValue: map['intValue'] == null ? null : (map['intValue']! as String).input(),
      protoArray: map['protoArray'] == null ? null : (EnterpriseCrmEventbusProtoProtoParameterArray.fromMap((map['protoArray']! as Map).cast<String, dynamic>())).input(),
      protoValue: map['protoValue'] == null ? null : ((map['protoValue']! as Map).cast<String, String>()).input(),
      serializedObjectValue: map['serializedObjectValue'] == null ? null : (EnterpriseCrmEventbusProtoSerializedObjectParameter.fromMap((map['serializedObjectValue']! as Map).cast<String, dynamic>())).input(),
      stringArray: map['stringArray'] == null ? null : (EnterpriseCrmEventbusProtoStringParameterArray.fromMap((map['stringArray']! as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue']! as String).input(),
    );
  }
}

