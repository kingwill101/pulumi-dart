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

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      name: (map['name'] as String).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

