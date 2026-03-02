// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_value_type_response.dart';

/// Condition that uses `operator` to evaluate the key against the value.
class EnterpriseCrmEventbusProtoConditionResponse {
  /// Key that's evaluated against the `value`. Please note the data type of the runtime value associated with the key should match the data type of `value`, else an IllegalArgumentException is thrown.
  final pulumi.Input<String> eventPropertyKey;
  /// Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.
  final pulumi.Input<String> operator;
  /// Value that's checked for the key.
  final pulumi.Input<EnterpriseCrmEventbusProtoValueTypeResponse> value;

  /// Creates a new [EnterpriseCrmEventbusProtoConditionResponse].
  /// [eventPropertyKey] Key that's evaluated against the `value`. Please note the data type of the runtime value associated with the key should match the data type of `value`, else an IllegalArgumentException is thrown.
  /// [operator] Operator used to evaluate the condition. Please note that an operator with an inappropriate key/value operand will result in IllegalArgumentException, e.g. CONTAINS with boolean key/value pair.
  /// [value] Value that's checked for the key.
  EnterpriseCrmEventbusProtoConditionResponse({
    required this.eventPropertyKey,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventPropertyKey': eventPropertyKey,
      'operator': operator,
      'value': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoValueTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoConditionResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoConditionResponse(
      eventPropertyKey: (map['eventPropertyKey'] as String).input(),
      operator: (map['operator'] as String).input(),
      value: (EnterpriseCrmEventbusProtoValueTypeResponse.fromMap((map['value'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

