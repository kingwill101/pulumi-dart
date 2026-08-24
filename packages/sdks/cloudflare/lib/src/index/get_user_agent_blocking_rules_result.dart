// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_agent_blocking_rules_result_configuration.dart';

class GetUserAgentBlockingRulesResult {
  /// The configuration object for the current rule.
  final pulumi.Input<GetUserAgentBlockingRulesResultConfiguration> configuration;
  /// An informative summary of the rule.
  final pulumi.Input<String> description;
  /// The unique identifier of the User Agent Blocking rule.
  final pulumi.Input<String> id;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "js*challenge", "managed*challenge".
  final pulumi.Input<String> mode;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool> paused;

  /// Creates a new [GetUserAgentBlockingRulesResult].
  /// [configuration] The configuration object for the current rule.
  /// [description] An informative summary of the rule.
  /// [id] The unique identifier of the User Agent Blocking rule.
  /// [mode] The action to apply to a matched request.
  /// [paused] When true, indicates that the rule is currently paused.
  const GetUserAgentBlockingRulesResult({
    required this.configuration,
    required this.description,
    required this.id,
    required this.mode,
    required this.paused,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<GetUserAgentBlockingRulesResultConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': description,
      'id': id,
      'mode': mode,
      'paused': paused,
    };
  }

  factory GetUserAgentBlockingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetUserAgentBlockingRulesResult(
      configuration: pulumi.Input.fromValue(GetUserAgentBlockingRulesResultConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
    );
  }
}
