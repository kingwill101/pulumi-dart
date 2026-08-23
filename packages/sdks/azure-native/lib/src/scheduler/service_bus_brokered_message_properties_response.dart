// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceBusBrokeredMessagePropertiesResponse {
  /// Gets or sets the content type.
  final pulumi.Input<String>? contentType;
  /// Gets or sets the correlation ID.
  final pulumi.Input<String>? correlationId;
  /// Gets or sets the force persistence.
  final pulumi.Input<bool>? forcePersistence;
  /// Gets or sets the label.
  final pulumi.Input<String>? label;
  /// Gets or sets the message ID.
  final pulumi.Input<String>? messageId;
  /// Gets or sets the partition key.
  final pulumi.Input<String>? partitionKey;
  /// Gets or sets the reply to.
  final pulumi.Input<String>? replyTo;
  /// Gets or sets the reply to session ID.
  final pulumi.Input<String>? replyToSessionId;
  /// Gets or sets the scheduled enqueue time UTC.
  final pulumi.Input<String>? scheduledEnqueueTimeUtc;
  /// Gets or sets the session ID.
  final pulumi.Input<String>? sessionId;
  /// Gets or sets the time to live.
  final pulumi.Input<String>? timeToLive;
  /// Gets or sets the to.
  final pulumi.Input<String>? to;
  /// Gets or sets the via partition key.
  final pulumi.Input<String>? viaPartitionKey;

  /// Creates a new [ServiceBusBrokeredMessagePropertiesResponse].
  /// [contentType] Gets or sets the content type.
  /// [correlationId] Gets or sets the correlation ID.
  /// [forcePersistence] Gets or sets the force persistence.
  /// [label] Gets or sets the label.
  /// [messageId] Gets or sets the message ID.
  /// [partitionKey] Gets or sets the partition key.
  /// [replyTo] Gets or sets the reply to.
  /// [replyToSessionId] Gets or sets the reply to session ID.
  /// [scheduledEnqueueTimeUtc] Gets or sets the scheduled enqueue time UTC.
  /// [sessionId] Gets or sets the session ID.
  /// [timeToLive] Gets or sets the time to live.
  /// [to] Gets or sets the to.
  /// [viaPartitionKey] Gets or sets the via partition key.
  const ServiceBusBrokeredMessagePropertiesResponse({
    this.contentType,
    this.correlationId,
    this.forcePersistence,
    this.label,
    this.messageId,
    this.partitionKey,
    this.replyTo,
    this.replyToSessionId,
    this.scheduledEnqueueTimeUtc,
    this.sessionId,
    this.timeToLive,
    this.to,
    this.viaPartitionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'correlationId': ?correlationId,
      'forcePersistence': ?forcePersistence,
      'label': ?label,
      'messageId': ?messageId,
      'partitionKey': ?partitionKey,
      'replyTo': ?replyTo,
      'replyToSessionId': ?replyToSessionId,
      'scheduledEnqueueTimeUtc': ?scheduledEnqueueTimeUtc,
      'sessionId': ?sessionId,
      'timeToLive': ?timeToLive,
      'to': ?to,
      'viaPartitionKey': ?viaPartitionKey,
    };
  }

  factory ServiceBusBrokeredMessagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusBrokeredMessagePropertiesResponse(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      correlationId: (() { final guardedValue = map['correlationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forcePersistence: (() { final guardedValue = map['forcePersistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageId: (() { final guardedValue = map['messageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replyTo: (() { final guardedValue = map['replyTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replyToSessionId: (() { final guardedValue = map['replyToSessionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledEnqueueTimeUtc: (() { final guardedValue = map['scheduledEnqueueTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionId: (() { final guardedValue = map['sessionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viaPartitionKey: (() { final guardedValue = map['viaPartitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
