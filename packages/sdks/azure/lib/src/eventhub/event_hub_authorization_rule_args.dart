// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_event_hub_authorization_rule_event_hub_authorization_rule_args_doc}
/// The set of arguments for EventHubAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_event_hub_authorization_rule_event_hub_authorization_rule_args_doc}
class EventHubAuthorizationRuleArgs {
  /// Specifies the name of the EventHub. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubName;
  /// Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String> resourceGroupName;
  /// Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [EventHubAuthorizationRuleArgs].
  /// [eventhubName] Specifies the name of the EventHub. Changing this forces a new resource to be created.
  /// [listen] Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  /// [manage] Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  /// [send] Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  EventHubAuthorizationRuleArgs({
    required pulumi.Output<String> eventhubName,
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? send,
  }) :
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      send = pulumi.Input.asOptionalInput<bool>(send);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'send': ?send,
    };
  }

  factory EventHubAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return EventHubAuthorizationRuleArgs(
      eventhubName: pulumi.Output.create<String>(map['eventhubName'] as String),
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

