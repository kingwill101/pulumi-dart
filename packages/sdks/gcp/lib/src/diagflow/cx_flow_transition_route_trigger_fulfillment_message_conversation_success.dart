// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final pulumi.Input<String>? metadata;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccess({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccess.fromMap(Map<String, dynamic> map) {
    return CxFlowTransitionRouteTriggerFulfillmentMessageConversationSuccess(
      metadata: map['metadata'] == null ? null : (map['metadata']! as String).input(),
    );
  }
}

