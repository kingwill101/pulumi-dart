// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailActionTransferAgent {
  /// The name of the agent to transfer the conversation to. The agent must be
  /// in the same app as the current agent.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String> agent;

  /// Creates a new [GuardrailActionTransferAgent].
  /// [agent] The name of the agent to transfer the conversation to. The agent must be
  GuardrailActionTransferAgent({
    required this.agent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
    };
  }

  factory GuardrailActionTransferAgent.fromMap(Map<String, dynamic> map) {
    return GuardrailActionTransferAgent(
      agent: (map['agent'] as String).input(),
    );
  }
}

