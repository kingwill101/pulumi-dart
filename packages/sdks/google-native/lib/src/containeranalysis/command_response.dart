// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Command describes a step performed as part of the build pipeline.
class CommandResponse {
  /// Command-line arguments used when executing this command.
  final pulumi.Input<List<String>> args;
  /// Working directory (relative to project source root) used when running this command.
  final pulumi.Input<String> dir;
  /// Environment variables set before running this command.
  final pulumi.Input<List<String>> env;
  /// Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  final pulumi.Input<String> name;
  /// The ID(s) of the command(s) that this command depends on.
  final pulumi.Input<List<String>> waitFor;

  /// Creates a new [CommandResponse].
  /// [args] Command-line arguments used when executing this command.
  /// [dir] Working directory (relative to project source root) used when running this command.
  /// [env] Environment variables set before running this command.
  /// [name] Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  /// [waitFor] The ID(s) of the command(s) that this command depends on.
  const CommandResponse({
    required this.args,
    required this.dir,
    required this.env,
    required this.name,
    required this.waitFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'dir': dir,
      'env': env,
      'name': name,
      'waitFor': waitFor,
    };
  }

  factory CommandResponse.fromMap(Map<String, dynamic> map) {
    return CommandResponse(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      dir: pulumi.Input.fromValue(map['dir'] as String),
      env: pulumi.Input.fromValue((map['env'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      waitFor: pulumi.Input.fromValue((map['waitFor'] as List).cast<String>()),
    );
  }
}
