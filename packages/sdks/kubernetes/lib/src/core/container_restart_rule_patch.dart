// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_restart_rule_on_exit_codes_patch.dart';

/// ContainerRestartRule describes how a container exit is handled.
class ContainerRestartRulePatch {
  /// Specifies the action taken on a container exit if the requirements are satisfied. The only possible value is "Restart" to restart the container.
  final pulumi.Input<String>? action;
  /// Represents the exit codes to check on container exits.
  final pulumi.Input<ContainerRestartRuleOnExitCodesPatch>? exitCodes;

  /// Creates a new [ContainerRestartRulePatch].
  /// [action] Specifies the action taken on a container exit if the requirements are satisfied. The only possible value is "Restart" to restart the container.
  /// [exitCodes] Represents the exit codes to check on container exits.
  ContainerRestartRulePatch({
    this.action,
    this.exitCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'exitCodes': ?pulumi.Input.mapOptionalInputValue<ContainerRestartRuleOnExitCodesPatch, Map<String, dynamic>>(exitCodes, (value) => value.toMap()),
    };
  }

  factory ContainerRestartRulePatch.fromMap(Map<String, dynamic> map) {
    return ContainerRestartRulePatch(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exitCodes: (() { final guardedValue = map['exitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerRestartRuleOnExitCodesPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

