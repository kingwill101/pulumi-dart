// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_condition_response.dart';

/// This message recursively combines constituent conditions using logical AND.
class EnterpriseCrmEventbusProtoCombinedConditionResponse {
  /// A set of individual constituent conditions.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoConditionResponse>> conditions;

  /// Creates a new [EnterpriseCrmEventbusProtoCombinedConditionResponse].
  /// [conditions] A set of individual constituent conditions.
  EnterpriseCrmEventbusProtoCombinedConditionResponse({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmEventbusProtoCombinedConditionResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCombinedConditionResponse(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoConditionResponse>(map['conditions']!, (value) => EnterpriseCrmEventbusProtoConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

