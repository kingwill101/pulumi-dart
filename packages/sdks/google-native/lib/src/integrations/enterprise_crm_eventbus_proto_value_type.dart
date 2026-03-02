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
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue']! as bool).input(),
      doubleArray: map['doubleArray'] == null ? null : (EnterpriseCrmEventbusProtoDoubleArray.fromMap((map['doubleArray']! as Map).cast<String, dynamic>())).input(),
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue']! as double).input(),
      intArray: map['intArray'] == null ? null : (EnterpriseCrmEventbusProtoIntArray.fromMap((map['intArray']! as Map).cast<String, dynamic>())).input(),
      intValue: map['intValue'] == null ? null : (map['intValue']! as String).input(),
      protoValue: map['protoValue'] == null ? null : ((map['protoValue']! as Map).cast<String, String>()).input(),
      stringArray: map['stringArray'] == null ? null : (EnterpriseCrmEventbusProtoStringArray.fromMap((map['stringArray']! as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue']! as String).input(),
    );
  }
}

