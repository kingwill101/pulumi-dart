// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_queue_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_queue_get_queue_args_doc}
class GetQueueArgs {
  /// The name of this Service Bus Queue.
  final pulumi.Input<String> name;

  /// The ID of the ServiceBus Namespace where the Service Bus Queue exists.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetQueueArgs].
  /// [name] The name of this Service Bus Queue.
  /// [namespaceId] The ID of the ServiceBus Namespace where the Service Bus Queue exists.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  GetQueueArgs({
    required this.name,
    this.namespaceId,
    this.namespaceName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceId: (() {
        final guardedValue = map['namespaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
