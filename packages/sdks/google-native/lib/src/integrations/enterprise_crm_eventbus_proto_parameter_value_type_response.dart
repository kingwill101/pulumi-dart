// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_boolean_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_double_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_int_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_proto_parameter_array_response.dart';
import 'enterprise_crm_eventbus_proto_serialized_object_parameter_response.dart';
import 'enterprise_crm_eventbus_proto_string_parameter_array_response.dart';

/// LINT.IfChange To support various types of parameter values. Next available id: 14
class EnterpriseCrmEventbusProtoParameterValueTypeResponse {
  final pulumi.Input<EnterpriseCrmEventbusProtoBooleanParameterArrayResponse> booleanArray;
  final pulumi.Input<bool> booleanValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoDoubleParameterArrayResponse> doubleArray;
  final pulumi.Input<double> doubleValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoIntParameterArrayResponse> intArray;
  final pulumi.Input<String> intValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoProtoParameterArrayResponse> protoArray;
  final pulumi.Input<Map<String, String>> protoValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoSerializedObjectParameterResponse> serializedObjectValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoStringParameterArrayResponse> stringArray;
  final pulumi.Input<String> stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoParameterValueTypeResponse].
  /// [booleanArray] Required.
  /// [booleanValue] Required.
  /// [doubleArray] Required.
  /// [doubleValue] Required.
  /// [intArray] Required.
  /// [intValue] Required.
  /// [protoArray] Required.
  /// [protoValue] Required.
  /// [serializedObjectValue] Required.
  /// [stringArray] Required.
  /// [stringValue] Required.
  EnterpriseCrmEventbusProtoParameterValueTypeResponse({
    required this.booleanArray,
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
    required this.protoArray,
    required this.protoValue,
    required this.serializedObjectValue,
    required this.stringArray,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoBooleanParameterArrayResponse, Map<String, dynamic>>(booleanArray, (value) => value.toMap()),
      'booleanValue': booleanValue,
      'doubleArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoDoubleParameterArrayResponse, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': doubleValue,
      'intArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoIntParameterArrayResponse, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': intValue,
      'protoArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoProtoParameterArrayResponse, Map<String, dynamic>>(protoArray, (value) => value.toMap()),
      'protoValue': protoValue,
      'serializedObjectValue': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoSerializedObjectParameterResponse, Map<String, dynamic>>(serializedObjectValue, (value) => value.toMap()),
      'stringArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoStringParameterArrayResponse, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoParameterValueTypeResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParameterValueTypeResponse(
      booleanArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoBooleanParameterArrayResponse.fromMap((map['booleanArray']! as Map).cast<String, dynamic>())),
      booleanValue: pulumi.Input.fromValue(map['booleanValue'] as bool),
      doubleArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoDoubleParameterArrayResponse.fromMap((map['doubleArray']! as Map).cast<String, dynamic>())),
      doubleValue: pulumi.Input.fromValue(map['doubleValue'] as double),
      intArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoIntParameterArrayResponse.fromMap((map['intArray']! as Map).cast<String, dynamic>())),
      intValue: pulumi.Input.fromValue(map['intValue'] as String),
      protoArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoProtoParameterArrayResponse.fromMap((map['protoArray']! as Map).cast<String, dynamic>())),
      protoValue: pulumi.Input.fromValue((map['protoValue'] as Map).cast<String, String>()),
      serializedObjectValue: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoSerializedObjectParameterResponse.fromMap((map['serializedObjectValue']! as Map).cast<String, dynamic>())),
      stringArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoStringParameterArrayResponse.fromMap((map['stringArray']! as Map).cast<String, dynamic>())),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}

