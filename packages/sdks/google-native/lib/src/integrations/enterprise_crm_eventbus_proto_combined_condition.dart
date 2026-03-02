// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_condition.dart';

/// This message recursively combines constituent conditions using logical AND.
class EnterpriseCrmEventbusProtoCombinedCondition {
  /// A set of individual constituent conditions.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoCondition>>? conditions;

  /// Creates a new [EnterpriseCrmEventbusProtoCombinedCondition].
  /// [conditions] A set of individual constituent conditions.
  EnterpriseCrmEventbusProtoCombinedCondition({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmEventbusProtoCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmEventbusProtoCombinedCondition.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCombinedCondition(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmEventbusProtoCondition>(map['conditions']!, (value) => EnterpriseCrmEventbusProtoCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

