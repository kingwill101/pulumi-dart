// ignore_for_file: unused_element, unnecessary_cast


class CxPageEventHandlerTriggerFulfillmentMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxPageEventHandlerTriggerFulfillmentMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxPageEventHandlerTriggerFulfillmentMessageConversationSuccess({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxPageEventHandlerTriggerFulfillmentMessageConversationSuccess.fromMap(Map<String, dynamic> map) {
    return CxPageEventHandlerTriggerFulfillmentMessageConversationSuccess(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}

