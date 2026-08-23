// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_queue_args_doc}
class GetQueueArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The queue name.
  final pulumi.Input<String> queueName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetQueueArgs].
  /// [namespaceName] The namespace name
  /// [queueName] The queue name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetQueueArgs({
    required this.namespaceName,
    required this.queueName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'queueName': queueName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
