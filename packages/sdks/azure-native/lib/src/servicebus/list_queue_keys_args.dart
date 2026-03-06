// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_list_queue_keys_args_doc}
/// Arguments for listQueueKeys.
/// {@endtemplate}
/// {@macro pulumi_servicebus_list_queue_keys_args_doc}
class ListQueueKeysArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The queue name.
  final pulumi.Input<String> queueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListQueueKeysArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [queueName] The queue name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListQueueKeysArgs({
    required this.authorizationRuleName,
    required this.namespaceName,
    required this.queueName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'queueName': queueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListQueueKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListQueueKeysArgs(
      authorizationRuleName: pulumi.Input.fromValue(map['authorizationRuleName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

