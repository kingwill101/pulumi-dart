// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_condition_operator.dart';
import 'enterprise_crm_eventbus_proto_value_type.dart';

/// Condition that uses `operator` to evaluate the key against the value.
class EnterpriseCrmEventbusProtoCondition {
  /// Key that's evaluated against the `value`. Please note the data type of the runtime value associated with the key should match the data type of `value`, else an IllegalArgumentException is thrown.
  final pulumi.Input<String>? eventPropertyKey;
  /// Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.
  final pulumi.Input<EnterpriseCrmEventbusProtoConditionOperator>? operator;
  /// Value that's checked for the key.
  final pulumi.Input<EnterpriseCrmEventbusProtoValueType>? value;

  /// Creates a new [EnterpriseCrmEventbusProtoCondition].
  /// [eventPropertyKey] Key that's evaluated against the `value`. Please note the data type of the runtime value associated with the key should match the data type of `value`, else an IllegalArgumentException is thrown.
  /// [operator] Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.
  /// [value] Value that's checked for the key.
  const EnterpriseCrmEventbusProtoCondition({
    this.eventPropertyKey,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventPropertyKey': ?eventPropertyKey,
      'operator': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoConditionOperator, String>(operator, (value) => value.wireValue),
      'value': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoValueType, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoCondition.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCondition(
      eventPropertyKey: (() { final guardedValue = map['eventPropertyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoConditionOperator.fromValue(guardedValue as String)); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoValueType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
