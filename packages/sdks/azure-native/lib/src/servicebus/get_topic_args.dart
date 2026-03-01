// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_topic_args_doc}
class GetTopicArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicArgs].
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicName] The topic name.
  GetTopicArgs({
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> topicName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

