// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Command describes a step performed as part of the build pipeline.
class CommandResponseContaineranalysisV1alpha1 {
  /// Command-line arguments used when executing this Command.
  final pulumi.Input<List<String>> args;
  /// Working directory (relative to project source root) used when running this Command.
  final pulumi.Input<String> dir;
  /// Environment variables set before running this Command.
  final pulumi.Input<List<String>> env;
  /// Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  final pulumi.Input<String> name;
  /// The ID(s) of the Command(s) that this Command depends on.
  final pulumi.Input<List<String>> waitFor;

  /// Creates a new [CommandResponseContaineranalysisV1alpha1].
  /// [args] Command-line arguments used when executing this Command.
  /// [dir] Working directory (relative to project source root) used when running this Command.
  /// [env] Environment variables set before running this Command.
  /// [name] Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  /// [waitFor] The ID(s) of the Command(s) that this Command depends on.
  const CommandResponseContaineranalysisV1alpha1({
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

  factory CommandResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return CommandResponseContaineranalysisV1alpha1(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      dir: pulumi.Input.fromValue(map['dir'] as String),
      env: pulumi.Input.fromValue((map['env'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      waitFor: pulumi.Input.fromValue((map['waitFor'] as List).cast<String>()),
    );
  }
}
