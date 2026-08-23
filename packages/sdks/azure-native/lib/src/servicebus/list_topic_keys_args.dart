// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_list_topic_keys_args_doc}
/// Arguments for listTopicKeys.
/// {@endtemplate}
/// {@macro pulumi_servicebus_list_topic_keys_args_doc}
class ListTopicKeysArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [ListTopicKeysArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicName] The topic name.
  const ListTopicKeysArgs({
    required this.authorizationRuleName,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory ListTopicKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListTopicKeysArgs(
      authorizationRuleName: pulumi.Input.fromValue(map['authorizationRuleName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
