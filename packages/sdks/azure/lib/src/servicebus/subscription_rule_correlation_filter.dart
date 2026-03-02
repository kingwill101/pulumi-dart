// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionRuleCorrelationFilter {
  /// Content type of the message.
  final pulumi.Input<String>? contentType;
  /// Identifier of the correlation.
  final pulumi.Input<String>? correlationId;
  /// Application specific label.
  final pulumi.Input<String>? label;
  /// Identifier of the message.
  final pulumi.Input<String>? messageId;
  /// A list of user defined properties to be included in the filter. Specified as a map of name/value pairs.
  ///
  /// > **Note:** When creating a subscription rule of type `CorrelationFilter` at least one property must be set in the `correlation_filter` block.
  final pulumi.Input<Map<String, String>>? properties;
  /// Address of the queue to reply to.
  final pulumi.Input<String>? replyTo;
  /// Session identifier to reply to.
  final pulumi.Input<String>? replyToSessionId;
  /// Session identifier.
  final pulumi.Input<String>? sessionId;
  /// Address to send to.
  final pulumi.Input<String>? to;

  /// Creates a new [SubscriptionRuleCorrelationFilter].
  /// [contentType] Content type of the message.
  /// [correlationId] Identifier of the correlation.
  /// [label] Application specific label.
  /// [messageId] Identifier of the message.
  /// [properties] A list of user defined properties to be included in the filter. Specified as a map of name/value pairs.
  /// [replyTo] Address of the queue to reply to.
  /// [replyToSessionId] Session identifier to reply to.
  /// [sessionId] Session identifier.
  /// [to] Address to send to.
  SubscriptionRuleCorrelationFilter({
    this.contentType,
    this.correlationId,
    this.label,
    this.messageId,
    this.properties,
    this.replyTo,
    this.replyToSessionId,
    this.sessionId,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'correlationId': ?correlationId,
      'label': ?label,
      'messageId': ?messageId,
      'properties': ?properties,
      'replyTo': ?replyTo,
      'replyToSessionId': ?replyToSessionId,
      'sessionId': ?sessionId,
      'to': ?to,
    };
  }

  factory SubscriptionRuleCorrelationFilter.fromMap(Map<String, dynamic> map) {
    return SubscriptionRuleCorrelationFilter(
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      correlationId: map['correlationId'] == null ? null : (map['correlationId']! as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      messageId: map['messageId'] == null ? null : (map['messageId']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      replyTo: map['replyTo'] == null ? null : (map['replyTo']! as String).input(),
      replyToSessionId: map['replyToSessionId'] == null ? null : (map['replyToSessionId']! as String).input(),
      sessionId: map['sessionId'] == null ? null : (map['sessionId']! as String).input(),
      to: map['to'] == null ? null : (map['to']! as String).input(),
    );
  }
}

