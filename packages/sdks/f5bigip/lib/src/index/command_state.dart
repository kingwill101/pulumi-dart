// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Command resources.
class CommandState {
  /// The resulting output from the `commands` executed.
  final pulumi.Input<List<String>>? commandResults;
  /// The commands to send to the remote BIG-IP device over the configured provider. The resulting output from the command is returned and added to `command_result`
  final pulumi.Input<List<String>>? commands;
  final pulumi.Input<String>? when;

  /// Creates a new [CommandState].
  /// [commandResults] The resulting output from the `commands` executed.
  /// [commands] The commands to send to the remote BIG-IP device over the configured provider. The resulting output from the command is returned and added to `command_result`
  /// [when] Optional.
  CommandState({
    this.commandResults,
    this.commands,
    this.when,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandResults': ?commandResults,
      'commands': ?commands,
      'when': ?when,
    };
  }

  factory CommandState.fromMap(Map<String, dynamic> map) {
    return CommandState(
      commandResults: map['commandResults'] == null ? null : ((map['commandResults'] as List).cast<String>()).input(),
      commands: map['commands'] == null ? null : ((map['commands'] as List).cast<String>()).input(),
      when: map['when'] == null ? null : (map['when'] as String).input(),
    );
  }
}

