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
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse> booleanArray;
  final pulumi.Input<bool> booleanValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse> doubleArray;
  final pulumi.Input<double> doubleValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse> intArray;
  final pulumi.Input<String> intValue;
  final pulumi.Input<String> jsonValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse> protoArray;
  final pulumi.Input<Map<String, String>> protoValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse> serializedObjectValue;
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse> stringArray;
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
      'booleanArray': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse, Map<String, dynamic>>(booleanArray, (value) => value.toMap()),
      'booleanValue': booleanValue,
      'doubleArray': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': doubleValue,
      'intArray': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': intValue,
      'jsonValue': jsonValue,
      'protoArray': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse, Map<String, dynamic>>(protoArray, (value) => value.toMap()),
      'protoValue': protoValue,
      'serializedObjectValue': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse, Map<String, dynamic>>(serializedObjectValue, (value) => value.toMap()),
      'stringArray': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': stringValue,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse(
      booleanArray: (EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse.fromMap((map['booleanArray'] as Map).cast<String, dynamic>())).input(),
      booleanValue: (map['booleanValue'] as bool).input(),
      doubleArray: (EnterpriseCrmFrontendsEventbusProtoDoubleParameterArrayResponse.fromMap((map['doubleArray'] as Map).cast<String, dynamic>())).input(),
      doubleValue: (map['doubleValue'] as double).input(),
      intArray: (EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse.fromMap((map['intArray'] as Map).cast<String, dynamic>())).input(),
      intValue: (map['intValue'] as String).input(),
      jsonValue: (map['jsonValue'] as String).input(),
      protoArray: (EnterpriseCrmFrontendsEventbusProtoProtoParameterArrayResponse.fromMap((map['protoArray'] as Map).cast<String, dynamic>())).input(),
      protoValue: ((map['protoValue'] as Map).cast<String, String>()).input(),
      serializedObjectValue: (EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse.fromMap((map['serializedObjectValue'] as Map).cast<String, dynamic>())).input(),
      stringArray: (EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse.fromMap((map['stringArray'] as Map).cast<String, dynamic>())).input(),
      stringValue: (map['stringValue'] as String).input(),
    );
  }
}

