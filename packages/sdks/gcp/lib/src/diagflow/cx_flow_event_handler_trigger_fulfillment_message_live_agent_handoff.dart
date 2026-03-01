// ignore_for_file: unused_element, unnecessary_cast


class CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final String? metadata;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoff.fromMap(Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentMessageLiveAgentHandoff(
      metadata: map['metadata'] == null ? null : map['metadata'] as String,
    );
  }
}

