// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final pulumi.Input<String>? metadata;

  /// Creates a new [CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  const CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
    };
  }

  factory CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorInitialPromptFulfillmentMessageLiveAgentHandoff(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
