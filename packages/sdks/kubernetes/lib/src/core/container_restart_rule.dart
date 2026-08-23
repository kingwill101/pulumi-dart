// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_restart_rule_on_exit_codes.dart';

/// ContainerRestartRule describes how a container exit is handled.
class ContainerRestartRule {
  /// Specifies the action taken on a container exit if the requirements are satisfied. The only possible value is "Restart" to restart the container.
  final pulumi.Input<String> action;
  /// Represents the exit codes to check on container exits.
  final pulumi.Input<ContainerRestartRuleOnExitCodes>? exitCodes;

  /// Creates a new [ContainerRestartRule].
  /// [action] Specifies the action taken on a container exit if the requirements are satisfied. The only possible value is "Restart" to restart the container.
  /// [exitCodes] Represents the exit codes to check on container exits.
  const ContainerRestartRule({
    required this.action,
    this.exitCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'exitCodes': ?pulumi.Input.mapOptionalInputValue<ContainerRestartRuleOnExitCodes, Map<String, dynamic>>(exitCodes, (value) => value.toMap()),
    };
  }

  factory ContainerRestartRule.fromMap(Map<String, dynamic> map) {
    return ContainerRestartRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      exitCodes: (() { final guardedValue = map['exitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerRestartRuleOnExitCodes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
