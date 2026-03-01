// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rights.dart';

/// {@template pulumi_servicebus_topic_authorization_rule_args_doc}
/// The set of arguments for TopicAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_topic_authorization_rule_args_doc}
class TopicAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String>? authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rights associated with the rule.
  final pulumi.Input<List<AccessRights>> rights;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [TopicAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] The rights associated with the rule.
  /// [topicName] The topic name.
  TopicAuthorizationRuleArgs({
    pulumi.Output<String>? authorizationRuleName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<AccessRights>> rights,
    required pulumi.Output<String> topicName,
  }) :
      authorizationRuleName = pulumi.Input.asOptionalInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rights = pulumi.Input.asInput<List<AccessRights>>(rights),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'rights': pulumi.Input.mapInputValue<List<AccessRights>, List<String>>(rights, (value) => pulumi.Input.encodeList<AccessRights, String>(value, (value) => value.value)),
      'topicName': topicName,
    };
  }

  factory TopicAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return TopicAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] == null ? null : pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rights: pulumi.Output.create<List<AccessRights>>(pulumi.Input.decodeList<AccessRights>(map['rights'], (value) => AccessRights.fromValue(value as String))),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

