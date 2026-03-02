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
  ServiceBusBrokeredMessagePropertiesResponse({
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
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      correlationId: map['correlationId'] == null ? null : (map['correlationId']! as String).input(),
      forcePersistence: map['forcePersistence'] == null ? null : (map['forcePersistence']! as bool).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      messageId: map['messageId'] == null ? null : (map['messageId']! as String).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey']! as String).input(),
      replyTo: map['replyTo'] == null ? null : (map['replyTo']! as String).input(),
      replyToSessionId: map['replyToSessionId'] == null ? null : (map['replyToSessionId']! as String).input(),
      scheduledEnqueueTimeUtc: map['scheduledEnqueueTimeUtc'] == null ? null : (map['scheduledEnqueueTimeUtc']! as String).input(),
      sessionId: map['sessionId'] == null ? null : (map['sessionId']! as String).input(),
      timeToLive: map['timeToLive'] == null ? null : (map['timeToLive']! as String).input(),
      to: map['to'] == null ? null : (map['to']! as String).input(),
      viaPartitionKey: map['viaPartitionKey'] == null ? null : (map['viaPartitionKey']! as String).input(),
    );
  }
}

