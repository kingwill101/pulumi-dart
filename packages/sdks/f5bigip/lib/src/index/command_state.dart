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
    pulumi.Output<List<String>>? commandResults,
    pulumi.Output<List<String>>? commands,
    pulumi.Output<String>? when,
  }) :
      commandResults = pulumi.Input.asOptionalInput<List<String>>(commandResults),
      commands = pulumi.Input.asOptionalInput<List<String>>(commands),
      when = pulumi.Input.asOptionalInput<String>(when);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandResults': ?commandResults,
      'commands': ?commands,
      'when': ?when,
    };
  }

  factory CommandState.fromMap(Map<String, dynamic> map) {
    return CommandState(
      commandResults: map['commandResults'] == null ? null : pulumi.Output.create<List<String>>((map['commandResults'] as List).cast<String>()),
      commands: map['commands'] == null ? null : pulumi.Output.create<List<String>>((map['commands'] as List).cast<String>()),
      when: map['when'] == null ? null : pulumi.Output.create<String>(map['when'] as String),
    );
  }
}

