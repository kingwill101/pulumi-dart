// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_definition.dart';

/// An object that wraps the Lifecycle rule. Each rule is uniquely defined by name.
class ManagementPolicyRule {
  /// An object that defines the Lifecycle rule.
  final pulumi.Input<ManagementPolicyDefinition> definition;
  /// Rule is enabled if set to true.
  final pulumi.Input<bool>? enabled;
  /// A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy.
  final pulumi.Input<String> name;
  /// The valid value is Lifecycle
  final pulumi.Input<String> type;

  /// Creates a new [ManagementPolicyRule].
  /// [definition] An object that defines the Lifecycle rule.
  /// [enabled] Rule is enabled if set to true.
  /// [name] A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy.
  /// [type] The valid value is Lifecycle
  ManagementPolicyRule({
    required this.definition,
    this.enabled,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<ManagementPolicyDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'enabled': ?enabled,
      'name': name,
      'type': type,
    };
  }

  factory ManagementPolicyRule.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRule(
      definition: (ManagementPolicyDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

