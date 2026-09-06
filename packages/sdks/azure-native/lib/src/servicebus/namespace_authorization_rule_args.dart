// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rights.dart';

/// {@template pulumi_servicebus_namespace_authorization_rule_args_doc}
/// The set of arguments for NamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_authorization_rule_args_doc}
class NamespaceAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String?>? authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rights associated with the rule.
  final pulumi.Input<List<AccessRights>> rights;

  /// Creates a new [NamespaceAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] The rights associated with the rule.
  const NamespaceAuthorizationRuleArgs({
    this.authorizationRuleName,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'rights': pulumi.Input.mapInputValue<List<AccessRights>, List<String>>(rights, (value) => pulumi.Input.encodeList<AccessRights, String>(value, (value) => value.wireValue)),
    };
  }

  factory NamespaceAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceAuthorizationRuleArgs(
      authorizationRuleName: (() { final guardedValue = map['authorizationRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rights: pulumi.Input.fromValue(pulumi.Input.decodeList<AccessRights>(map['rights']!, (value) => AccessRights.fromValue(value as String))),
    );
  }
}
