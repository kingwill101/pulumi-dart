// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_topic_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_topic_get_topic_args_doc}
class GetTopicArgs {
  /// The name of this Service Bus Topic.
  final pulumi.Input<String> name;
  /// The ID of the ServiceBus Namespace where the Service Bus Topic exists.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetTopicArgs].
  /// [name] The name of this Service Bus Topic.
  /// [namespaceId] The ID of the ServiceBus Namespace where the Service Bus Topic exists.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  GetTopicArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

