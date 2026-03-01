// ignore_for_file: unused_element, unnecessary_cast

import 'container_restart_rule_on_exit_codes.dart';

/// ContainerRestartRule describes how a container exit is handled.
class ContainerRestartRule {
  /// Specifies the action taken on a container exit if the requirements are satisfied. The only possible value is "Restart" to restart the container.
  final String action;
  /// Represents the exit codes to check on container exits.
  final ContainerRestartRuleOnExitCodes? exitCodes;

  /// Creates a new [ContainerRestartRule].
  /// [action] Specifies the action taken on a container exit if the requirements are satisfied. The only possible value is "Restart" to restart the container.
  /// [exitCodes] Represents the exit codes to check on container exits.
  ContainerRestartRule({
    required this.action,
    this.exitCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'exitCodes': ?exitCodes == null ? null : exitCodes!.toMap(),
    };
  }

  factory ContainerRestartRule.fromMap(Map<String, dynamic> map) {
    return ContainerRestartRule(
      action: map['action'] as String,
      exitCodes: map['exitCodes'] == null ? null : ContainerRestartRuleOnExitCodes.fromMap((map['exitCodes'] as Map).cast<String, dynamic>()),
    );
  }
}

