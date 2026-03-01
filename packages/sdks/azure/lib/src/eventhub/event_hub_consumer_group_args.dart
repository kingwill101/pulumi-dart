// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_event_hub_consumer_group_event_hub_consumer_group_args_doc}
/// The set of arguments for EventHubConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_eventhub_event_hub_consumer_group_event_hub_consumer_group_args_doc}
class EventHubConsumerGroupArgs {
  /// Specifies the name of the EventHub. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubName;
  /// Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the user metadata.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [EventHubConsumerGroupArgs].
  /// [eventhubName] Specifies the name of the EventHub. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created.
  /// [userMetadata] Specifies the user metadata.
  EventHubConsumerGroupArgs({
    required pulumi.Output<String> eventhubName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? userMetadata,
  }) :
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userMetadata = pulumi.Input.asOptionalInput<String>(userMetadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'name': ?name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory EventHubConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return EventHubConsumerGroupArgs(
      eventhubName: pulumi.Output.create<String>(map['eventhubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userMetadata: map['userMetadata'] == null ? null : pulumi.Output.create<String>(map['userMetadata'] as String),
    );
  }
}

