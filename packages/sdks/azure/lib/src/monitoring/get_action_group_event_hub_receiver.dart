// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupEventHubReceiver {
  /// The name of the specific Event Hub queue.
  final pulumi.Input<String> eventHubName;
  /// The namespace name of the Event Hub.
  final pulumi.Input<String> eventHubNamespace;
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  final pulumi.Input<String> subscriptionId;
  /// The Tenant ID for the subscription containing this Event Hub.
  final pulumi.Input<String> tenantId;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [GetActionGroupEventHubReceiver].
  /// [eventHubName] The name of the specific Event Hub queue.
  /// [eventHubNamespace] The namespace name of the Event Hub.
  /// [name] Specifies the name of the Action Group.
  /// [subscriptionId] The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  /// [tenantId] The Tenant ID for the subscription containing this Event Hub.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  const GetActionGroupEventHubReceiver({
    required this.eventHubName,
    required this.eventHubNamespace,
    required this.name,
    required this.subscriptionId,
    required this.tenantId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubName': eventHubName,
      'eventHubNamespace': eventHubNamespace,
      'name': name,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory GetActionGroupEventHubReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupEventHubReceiver(
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      eventHubNamespace: pulumi.Input.fromValue(map['eventHubNamespace'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

