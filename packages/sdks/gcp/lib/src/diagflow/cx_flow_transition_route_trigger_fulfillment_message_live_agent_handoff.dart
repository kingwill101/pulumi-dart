// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final pulumi.Input<String>? metadata;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  const CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff.fromMap(Map<String, dynamic> map) {
    return CxFlowTransitionRouteTriggerFulfillmentMessageLiveAgentHandoff(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
