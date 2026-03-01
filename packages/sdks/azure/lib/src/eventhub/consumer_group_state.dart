// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConsumerGroup resources.
class ConsumerGroupState {
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

  /// Creates a new [ConsumerGroupState].
  /// [eventhubName] Specifies the name of the EventHub. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventHub Consumer Group resource. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists. Changing this forces a new resource to be created.
  /// [userMetadata] Specifies the user metadata.
  ConsumerGroupState({
    pulumi.Output<String>? eventhubName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? userMetadata,
  }) :
      eventhubName = pulumi.Input.asOptionalInput<String>(eventhubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      userMetadata = pulumi.Input.asOptionalInput<String>(userMetadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': ?eventhubName,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory ConsumerGroupState.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupState(
      eventhubName: map['eventhubName'] == null ? null : pulumi.Output.create<String>(map['eventhubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userMetadata: map['userMetadata'] == null ? null : pulumi.Output.create<String>(map['userMetadata'] as String),
    );
  }
}

