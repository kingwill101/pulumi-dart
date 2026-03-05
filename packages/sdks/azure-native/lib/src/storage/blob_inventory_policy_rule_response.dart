// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_definition_response.dart';

/// An object that wraps the blob inventory rule. Each rule is uniquely defined by name.
class BlobInventoryPolicyRuleResponse {
  /// An object that defines the blob inventory policy rule.
  final pulumi.Input<BlobInventoryPolicyDefinitionResponse> definition;
  /// Container name where blob inventory files are stored. Must be pre-created.
  final pulumi.Input<String> destination;
  /// Rule is enabled when set to true.
  final pulumi.Input<bool> enabled;
  /// A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy.
  final pulumi.Input<String> name;

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
      'definition': pulumi.Input.mapInputValue<BlobInventoryPolicyDefinitionResponse, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'destination': destination,
      'enabled': enabled,
      'name': name,
    };
  }

  factory BlobInventoryPolicyRuleResponse.fromMap(Map<String, dynamic> map) {
    return BlobInventoryPolicyRuleResponse(
      definition: pulumi.Input.fromValue(BlobInventoryPolicyDefinitionResponse.fromMap((map['definition']! as Map).cast<String, dynamic>())),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

