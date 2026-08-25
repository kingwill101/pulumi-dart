// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent {
  /// (Output)
  /// The human-readable name of the intent, unique within the agent.
  final pulumi.Input<String?>? displayName;
  /// The unique identifier of the intent.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;.
  final pulumi.Input<String?>? name;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent].
  /// [displayName] (Output)
  /// [name] The unique identifier of the intent.
  const CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent({
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
