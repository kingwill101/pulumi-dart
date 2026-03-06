// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_double_array_response.dart';
import 'enterprise_crm_eventbus_proto_int_array_response.dart';
import 'enterprise_crm_eventbus_proto_string_array_response.dart';

/// Used for define type for values. Currently supported value types include int, string, double, array, and any proto message.
class EnterpriseCrmEventbusProtoValueTypeResponse {
  final pulumi.Input<bool> booleanValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoDoubleArrayResponse> doubleArray;
  final pulumi.Input<double> doubleValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoIntArrayResponse> intArray;
  final pulumi.Input<String> intValue;
  final pulumi.Input<Map<String, String>> protoValue;
  final pulumi.Input<EnterpriseCrmEventbusProtoStringArrayResponse> stringArray;
  final pulumi.Input<String> stringValue;

  /// Creates a new [EnterpriseCrmEventbusProtoValueTypeResponse].
  /// [booleanValue] Required.
  /// [doubleArray] Required.
  /// [doubleValue] Required.
  /// [intArray] Required.
  /// [intValue] Required.
  /// [protoValue] Required.
  /// [stringArray] Required.
  /// [stringValue] Required.
  const EnterpriseCrmEventbusProtoValueTypeResponse({
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
    required this.protoValue,
    required this.stringArray,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': booleanValue,
      'doubleArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoDoubleArrayResponse, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': doubleValue,
      'intArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoIntArrayResponse, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': intValue,
      'protoValue': protoValue,
      'stringArray': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoStringArrayResponse, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': stringValue,
    };
  }

  factory EnterpriseCrmEventbusProtoValueTypeResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoValueTypeResponse(
      booleanValue: pulumi.Input.fromValue(map['booleanValue'] as bool),
      doubleArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoDoubleArrayResponse.fromMap((map['doubleArray']! as Map).cast<String, dynamic>())),
      doubleValue: pulumi.Input.fromValue(map['doubleValue'] as double),
      intArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoIntArrayResponse.fromMap((map['intArray']! as Map).cast<String, dynamic>())),
      intValue: pulumi.Input.fromValue(map['intValue'] as String),
      protoValue: pulumi.Input.fromValue((map['protoValue'] as Map).cast<String, String>()),
      stringArray: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoStringArrayResponse.fromMap((map['stringArray']! as Map).cast<String, dynamic>())),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}

