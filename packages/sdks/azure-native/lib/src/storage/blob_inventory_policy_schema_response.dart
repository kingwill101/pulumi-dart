// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_rule_response.dart';

/// The storage account blob inventory policy rules.
class BlobInventoryPolicySchemaResponse {
  /// Deprecated Property from API version 2021-04-01 onwards, the required destination container name must be specified at the rule level 'policy.rule.destination'
  final pulumi.Input<String> destination;
  /// Policy is enabled if set to true.
  final pulumi.Input<bool> enabled;
  /// The storage account blob inventory policy rules. The rule is applied when it is enabled.
  final pulumi.Input<List<BlobInventoryPolicyRuleResponse>> rules;
  /// The valid value is Inventory
  final pulumi.Input<String> type;

  /// Creates a new [BlobInventoryPolicySchemaResponse].
  /// [destination] Deprecated Property from API version 2021-04-01 onwards, the required destination container name must be specified at the rule level 'policy.rule.destination'
  /// [enabled] Policy is enabled if set to true.
  /// [rules] The storage account blob inventory policy rules. The rule is applied when it is enabled.
  /// [type] The valid value is Inventory
  const BlobInventoryPolicySchemaResponse({
    required this.destination,
    required this.enabled,
    required this.rules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'enabled': enabled,
      'rules': pulumi.Input.mapInputValue<List<BlobInventoryPolicyRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BlobInventoryPolicyRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory BlobInventoryPolicySchemaResponse.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicySchemaResponse(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<BlobInventoryPolicyRuleResponse>(map['rules']!, (value) => BlobInventoryPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

