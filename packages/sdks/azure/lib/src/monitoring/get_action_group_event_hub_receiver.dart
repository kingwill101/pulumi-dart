// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupEventHubReceiver {
  /// The name of the specific Event Hub queue.
  final String eventHubName;
  /// The namespace name of the Event Hub.
  final String eventHubNamespace;
  /// Specifies the name of the Action Group.
  final String name;
  /// The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  final String subscriptionId;
  /// The Tenant ID for the subscription containing this Event Hub.
  final String tenantId;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [GetActionGroupEventHubReceiver].
  /// [eventHubName] The name of the specific Event Hub queue.
  /// [eventHubNamespace] The namespace name of the Event Hub.
  /// [name] Specifies the name of the Action Group.
  /// [subscriptionId] The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
  /// [tenantId] The Tenant ID for the subscription containing this Event Hub.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  GetActionGroupEventHubReceiver({
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
      eventHubName: map['eventHubName'] as String,
      eventHubNamespace: map['eventHubNamespace'] as String,
      name: map['name'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tenantId: map['tenantId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

