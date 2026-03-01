// ignore_for_file: unused_element, unnecessary_cast


class VolumeReplicationHybridReplicationUserCommand {
  /// (Output)
  /// List of commands to be executed by the customer.
  final List<String>? commands;

  /// Creates a new [VolumeReplicationHybridReplicationUserCommand].
  /// [commands] (Output)
  VolumeReplicationHybridReplicationUserCommand({
    this.commands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
    };
  }

  factory VolumeReplicationHybridReplicationUserCommand.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationHybridReplicationUserCommand(
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
    );
  }
}

