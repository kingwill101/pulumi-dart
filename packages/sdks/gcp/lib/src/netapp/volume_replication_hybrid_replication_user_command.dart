// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeReplicationHybridReplicationUserCommand {
  /// (Output)
  /// List of commands to be executed by the customer.
  final pulumi.Input<List<String>>? commands;

  /// Creates a new [VolumeReplicationHybridReplicationUserCommand].
  /// [commands] (Output)
  const VolumeReplicationHybridReplicationUserCommand({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
    };
  }

  factory VolumeReplicationHybridReplicationUserCommand.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationHybridReplicationUserCommand(
      commands: (() { final guardedValue = map['commands']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

