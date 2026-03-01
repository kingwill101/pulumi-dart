// ignore_for_file: unused_element, unnecessary_cast

import 'blob_inventory_policy_definition_response.dart';

/// An object that wraps the blob inventory rule. Each rule is uniquely defined by name.
class BlobInventoryPolicyRuleResponse {
  /// An object that defines the blob inventory policy rule.
  final BlobInventoryPolicyDefinitionResponse definition;
  /// Container name where blob inventory files are stored. Must be pre-created.
  final String destination;
  /// Rule is enabled when set to true.
  final bool enabled;
  /// A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy.
  final String name;

  /// Creates a new [BlobInventoryPolicyRuleResponse].
  /// [definition] An object that defines the blob inventory policy rule.
  /// [destination] Container name where blob inventory files are stored. Must be pre-created.
  /// [enabled] Rule is enabled when set to true.
  /// [name] A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy.
  BlobInventoryPolicyRuleResponse({
    required this.definition,
    required this.destination,
    required this.enabled,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition.toMap(),
      'destination': destination,
      'enabled': enabled,
      'name': name,
    };
  }

  factory BlobInventoryPolicyRuleResponse.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyRuleResponse(
      definition: BlobInventoryPolicyDefinitionResponse.fromMap((map['definition'] as Map).cast<String, dynamic>()),
      destination: map['destination'] as String,
      enabled: map['enabled'] as bool,
      name: map['name'] as String,
    );
  }
}

