// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupEventHubReceiver {
  /// The name of the specific Event Hub queue.
  final pulumi.Input<String> eventHubName;

  /// The namespace name of the Event Hub.
  final pulumi.Input<String> eventHubNamespace;

  /// The name of the EventHub Receiver, must be unique within action group.
  final pulumi.Input<String> name;

  /// The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  final pulumi.Input<String>? subscriptionId;

  /// The Tenant ID for the subscription containing this Event Hub.
  final pulumi.Input<String>? tenantId;

  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [ActionGroupEventHubReceiver].
  /// [eventHubName] The name of the specific Event Hub queue.
  /// [eventHubNamespace] The namespace name of the Event Hub.
  /// [name] The name of the EventHub Receiver, must be unique within action group.
  /// [subscriptionId] The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  /// [tenantId] The Tenant ID for the subscription containing this Event Hub.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  ActionGroupEventHubReceiver({
    required this.eventHubName,
    required this.eventHubNamespace,
    required this.name,
    this.subscriptionId,
    this.tenantId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubName': eventHubName,
      'eventHubNamespace': eventHubNamespace,
      'name': name,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupEventHubReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupEventHubReceiver(
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      eventHubNamespace: pulumi.Input.fromValue(
        map['eventHubNamespace'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      useCommonAlertSchema: (() {
        final guardedValue = map['useCommonAlertSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
