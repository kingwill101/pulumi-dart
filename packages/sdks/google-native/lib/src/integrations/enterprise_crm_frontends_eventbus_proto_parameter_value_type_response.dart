// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_boolean_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_double_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_int_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_proto_parameter_array_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_serialized_object_parameter_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_string_parameter_array_response.dart';

/// To support various types of parameter values. Next available id: 14
class EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse {
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse
  >
  booleanArray;
  final pulumi.Input<bool> booleanValue;
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse
  >
  doubleArray;
  final pulumi.Input<double> doubleValue;
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse
  >
  intArray;
  final pulumi.Input<String> intValue;
  final pulumi.Input<String> jsonValue;
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse
  >
  protoArray;
  final pulumi.Input<Map<String, String>> protoValue;
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse
  >
  serializedObjectValue;
  final pulumi.Input<
    EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse
  >
  stringArray;
  final pulumi.Input<String> stringValue;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse].
  /// [booleanArray] Required.
  /// [booleanValue] Required.
  /// [doubleArray] Required.
  /// [doubleValue] Required.
  /// [intArray] Required.
  /// [intValue] Required.
  /// [jsonValue] Required.
  /// [protoArray] Required.
  /// [protoValue] Required.
  /// [serializedObjectValue] Required.
  /// [stringArray] Required.
  /// [stringValue] Required.
  EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse({
    required this.booleanArray,
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
    required this.jsonValue,
    required this.protoArray,
    required this.protoValue,
    required this.serializedObjectValue,
    required this.stringArray,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray':
          pulumi.Input.mapInputValue<
            EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse,
            Map<String, dynamic>
          >(booleanArray, (value) => value.toMap()),
      'booleanValue': booleanValue,
      'doubleArray':
          pulumi.Input.mapInputValue<
            EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse,
            Map<String, dynamic>
          >(doubleArray, (value) => value.toMap()),
      'doubleValue': doubleValue,
      'intArray':
          pulumi.Input.mapInputValue<
            EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse,
            Map<String, dynamic>
          >(intArray, (value) => value.toMap()),
      'intValue': intValue,
      'jsonValue': jsonValue,
      'protoArray':
          pulumi.Input.mapInputValue<
            EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse,
            Map<String, dynamic>
          >(protoArray, (value) => value.toMap()),
      'protoValue': protoValue,
      'serializedObjectValue':
          pulumi.Input.mapInputValue<
            EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse,
            Map<String, dynamic>
          >(serializedObjectValue, (value) => value.toMap()),
      'stringArray':
          pulumi.Input.mapInputValue<
            EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse,
            Map<String, dynamic>
          >(stringArray, (value) => value.toMap()),
      'stringValue': stringValue,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse(
      booleanArray: pulumi.Input.fromValue(
        EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse.fromMap(
          (map['booleanArray']! as Map).cast<String, dynamic>(),
        ),
      ),
      booleanValue: pulumi.Input.fromValue(map['booleanValue'] as bool),
      doubleArray: pulumi.Input.fromValue(
        EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse.fromMap(
          (map['doubleArray']! as Map).cast<String, dynamic>(),
        ),
      ),
      doubleValue: pulumi.Input.fromValue(map['doubleValue'] as double),
      intArray: pulumi.Input.fromValue(
        EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse.fromMap(
          (map['intArray']! as Map).cast<String, dynamic>(),
        ),
      ),
      intValue: pulumi.Input.fromValue(map['intValue'] as String),
      jsonValue: pulumi.Input.fromValue(map['jsonValue'] as String),
      protoArray: pulumi.Input.fromValue(
        EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse.fromMap(
          (map['protoArray']! as Map).cast<String, dynamic>(),
        ),
      ),
      protoValue: pulumi.Input.fromValue(
        (map['protoValue'] as Map).cast<String, String>(),
      ),
      serializedObjectValue: pulumi.Input.fromValue(
        EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse.fromMap(
          (map['serializedObjectValue']! as Map).cast<String, dynamic>(),
        ),
      ),
      stringArray: pulumi.Input.fromValue(
        EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse.fromMap(
          (map['stringArray']! as Map).cast<String, dynamic>(),
        ),
      ),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}
