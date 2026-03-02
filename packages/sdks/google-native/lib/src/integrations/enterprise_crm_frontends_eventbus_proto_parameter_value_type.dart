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
  EnterpriseCrmFrontendsEventbusProtoParameterValueType({
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
      booleanArray: map['booleanArray'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.fromMap((map['booleanArray']! as Map).cast<String, dynamic>())).input(),
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue']! as bool).input(),
      doubleArray: map['doubleArray'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.fromMap((map['doubleArray']! as Map).cast<String, dynamic>())).input(),
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue']! as double).input(),
      intArray: map['intArray'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoIntParameterArray.fromMap((map['intArray']! as Map).cast<String, dynamic>())).input(),
      intValue: map['intValue'] == null ? null : (map['intValue']! as String).input(),
      jsonValue: map['jsonValue'] == null ? null : (map['jsonValue']! as String).input(),
      protoArray: map['protoArray'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromMap((map['protoArray']! as Map).cast<String, dynamic>())).input(),
      protoValue: map['protoValue'] == null ? null : ((map['protoValue']! as Map).cast<String, String>()).input(),
      serializedObjectValue: map['serializedObjectValue'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.fromMap((map['serializedObjectValue']! as Map).cast<String, dynamic>())).input(),
      stringArray: map['stringArray'] == null ? null : (EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromMap((map['stringArray']! as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue']! as String).input(),
    );
  }
}

