// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final pulumi.Input<String>? metadata;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentMessageLiveAgentHandoff(
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
