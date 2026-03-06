// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the correlation filter expression.
class CorrelationFilterResponse {
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

  /// Creates a new [CorrelationFilterResponse].
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
  const CorrelationFilterResponse({
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

  factory CorrelationFilterResponse.fromMap(Map<String, dynamic> map) {
    return CorrelationFilterResponse(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      correlationId: (() { final guardedValue = map['correlationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageId: (() { final guardedValue = map['messageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      replyTo: (() { final guardedValue = map['replyTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replyToSessionId: (() { final guardedValue = map['replyToSessionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiresPreprocessing: (() { final guardedValue = map['requiresPreprocessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sessionId: (() { final guardedValue = map['sessionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

