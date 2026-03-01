// ignore_for_file: unused_element, unnecessary_cast


/// Represents the correlation filter expression.
class CorrelationFilterResponse {
  /// Content type of the message.
  final String? contentType;
  /// Identifier of the correlation.
  final String? correlationId;
  /// Application specific label.
  final String? label;
  /// Identifier of the message.
  final String? messageId;
  /// dictionary object for custom filters
  final Map<String, String>? properties;
  /// Address of the queue to reply to.
  final String? replyTo;
  /// Session identifier to reply to.
  final String? replyToSessionId;
  /// Value that indicates whether the rule action requires preprocessing.
  final bool? requiresPreprocessing;
  /// Session identifier.
  final String? sessionId;
  /// Address to send to.
  final String? to;

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
  CorrelationFilterResponse({
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
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      correlationId: map['correlationId'] == null ? null : map['correlationId'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      messageId: map['messageId'] == null ? null : map['messageId'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      replyTo: map['replyTo'] == null ? null : map['replyTo'] as String,
      replyToSessionId: map['replyToSessionId'] == null ? null : map['replyToSessionId'] as String,
      requiresPreprocessing: map['requiresPreprocessing'] == null ? null : map['requiresPreprocessing'] as bool,
      sessionId: map['sessionId'] == null ? null : map['sessionId'] as String,
      to: map['to'] == null ? null : map['to'] as String,
    );
  }
}

