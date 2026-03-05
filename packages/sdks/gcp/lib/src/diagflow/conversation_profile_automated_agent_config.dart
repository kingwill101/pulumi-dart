// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileAutomatedAgentConfig {
  /// ID of the Dialogflow agent environment to use.
  /// Expects the format "projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent/environments/&lt;EnvironmentID&gt;"
  final pulumi.Input<String> agent;
  /// Configure lifetime of the Dialogflow session.
  final pulumi.Input<String>? sessionTtl;

  /// Creates a new [ConversationProfileAutomatedAgentConfig].
  /// [agent] ID of the Dialogflow agent environment to use.
  /// [sessionTtl] Configure lifetime of the Dialogflow session.
  ConversationProfileAutomatedAgentConfig({
    required this.agent,
    this.sessionTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
      'sessionTtl': ?sessionTtl,
    };
  }

  factory ConversationProfileAutomatedAgentConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileAutomatedAgentConfig(
      agent: pulumi.Input.fromValue(map['agent'] as String),
      sessionTtl: (() { final guardedValue = map['sessionTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

