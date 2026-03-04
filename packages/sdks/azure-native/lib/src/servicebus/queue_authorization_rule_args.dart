// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rights.dart';

/// {@template pulumi_servicebus_queue_authorization_rule_args_doc}
/// The set of arguments for QueueAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_queue_authorization_rule_args_doc}
class QueueAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String>? authorizationRuleName;

  /// The namespace name
  final pulumi.Input<String> namespaceName;

  /// The queue name.
  final pulumi.Input<String> queueName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The rights associated with the rule.
  final pulumi.Input<List<AccessRights>> rights;

  /// Creates a new [QueueAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [queueName] The queue name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] The rights associated with the rule.
  QueueAuthorizationRuleArgs({
    this.authorizationRuleName,
    required this.namespaceName,
    required this.queueName,
    required this.resourceGroupName,
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'namespaceName': namespaceName,
      'queueName': queueName,
      'resourceGroupName': resourceGroupName,
      'rights': pulumi.Input.mapInputValue<List<AccessRights>, List<String>>(
        rights,
        (value) => pulumi.Input.encodeList<AccessRights, String>(
          value,
          (value) => value.wireValue,
        ),
      ),
    };
  }

  factory QueueAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return QueueAuthorizationRuleArgs(
      authorizationRuleName: (() {
        final guardedValue = map['authorizationRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      rights: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AccessRights>(
          map['rights']!,
          (value) => AccessRights.fromValue(value as String),
        ),
      ),
    );
  }
}
