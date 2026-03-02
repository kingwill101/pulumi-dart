// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventHubConsumerGroup resources.
class EventHubConsumerGroupState {
  /// Specifies the name of the EventHub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubName;
  /// Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceName;
  /// The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the user metadata.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [EventHubConsumerGroupState].
  /// [eventhubName] Specifies the name of the EventHub. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created.
  /// [userMetadata] Specifies the user metadata.
  EventHubConsumerGroupState({
    this.eventhubName,
    this.name,
    this.namespaceName,
    this.resourceGroupName,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': ?eventhubName,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory EventHubConsumerGroupState.fromMap(Map<String, dynamic> map) {
    return EventHubConsumerGroupState(
      eventhubName: map['eventhubName'] == null ? null : (map['eventhubName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      userMetadata: map['userMetadata'] == null ? null : (map['userMetadata']! as String).input(),
    );
  }
}

