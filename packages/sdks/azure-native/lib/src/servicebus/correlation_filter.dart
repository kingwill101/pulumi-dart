// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the correlation filter expression.
class CorrelationFilter {
  /// Content type of the message.
  final pulumi.Input<String>? contentType;
  /// Identifier of the correlation.
  final pulumi.Input<String>? correlationId;
  /// Application specific label.
  final pulumi.Input<String>? label;
  /// Identifier of the message.
  final pulumi.Input<String>? messageId;
  /// dictionary object for custom filters
  final pulumi.Input<Map<String, String>>? properties;
  /// Address of the queue to reply to.
  final pulumi.Input<String>? replyTo;
  /// Session identifier to reply to.
  final pulumi.Input<String>? replyToSessionId;
  /// Value that indicates whether the rule action requires preprocessing.
  final pulumi.Input<bool>? requiresPreprocessing;
  /// Session identifier.
  final pulumi.Input<String>? sessionId;
  /// Address to send to.
  final pulumi.Input<String>? to;

  /// Creates a new [CorrelationFilter].
  /// [contentType] Content type of the message.
  /// [correlationId] Identifier of the correlation.
  /// [label] Application specific label.
  /// [messageId] Identifier of the message.
  /// [properties] dictionary object for custom filters
  /// [replyTo] Address of the queue to reply to.
  /// [replyToSessionId] Session identifier to reply to.
  /// [requiresPreprocessing] Value that indicates whether the rule action requires preprocessing.
  /// [sessionId] Session identifier.
  /// [to] Address to send to.
  CorrelationFilter({
    this.contentType,
    this.correlationId,
    this.label,
    this.messageId,
    this.properties,
    this.replyTo,
    this.replyToSessionId,
    this.requiresPreprocessing,
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
      'requiresPreprocessing': ?requiresPreprocessing,
      'sessionId': ?sessionId,
      'to': ?to,
    };
  }

  factory CorrelationFilter.fromMap(Map<String, dynamic> map) {
    return CorrelationFilter(
      contentType: map['contentType'] == null ? null : (map['contentType'] as String).input(),
      correlationId: map['correlationId'] == null ? null : (map['correlationId'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      messageId: map['messageId'] == null ? null : (map['messageId'] as String).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      replyTo: map['replyTo'] == null ? null : (map['replyTo'] as String).input(),
      replyToSessionId: map['replyToSessionId'] == null ? null : (map['replyToSessionId'] as String).input(),
      requiresPreprocessing: map['requiresPreprocessing'] == null ? null : (map['requiresPreprocessing'] as bool).input(),
      sessionId: map['sessionId'] == null ? null : (map['sessionId'] as String).input(),
      to: map['to'] == null ? null : (map['to'] as String).input(),
    );
  }
}

