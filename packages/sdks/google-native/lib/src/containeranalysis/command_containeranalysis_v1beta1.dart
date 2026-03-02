// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Command describes a step performed as part of the build pipeline.
class CommandContaineranalysisV1beta1 {
  /// Command-line arguments used when executing this command.
  final pulumi.Input<List<String>>? args;
  /// Working directory (relative to project source root) used when running this command.
  final pulumi.Input<String>? dir;
  /// Environment variables set before running this command.
  final pulumi.Input<List<String>>? env;
  /// Optional unique identifier for this command, used in wait_for to reference this command as a dependency.
  final pulumi.Input<String>? id;
  /// Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  final pulumi.Input<String> name;
  /// The ID(s) of the command(s) that this command depends on.
  final pulumi.Input<List<String>>? waitFor;

  /// Creates a new [CommandContaineranalysisV1beta1].
  /// [args] Command-line arguments used when executing this command.
  /// [dir] Working directory (relative to project source root) used when running this command.
  /// [env] Environment variables set before running this command.
  /// [id] Optional unique identifier for this command, used in wait_for to reference this command as a dependency.
  /// [name] Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  /// [waitFor] The ID(s) of the command(s) that this command depends on.
  CommandContaineranalysisV1beta1({
    this.args,
    this.dir,
    this.env,
    this.id,
    required this.name,
    this.waitFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'dir': ?dir,
      'env': ?env,
      'id': ?id,
      'name': name,
      'waitFor': ?waitFor,
    };
  }

  factory CommandContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return CommandContaineranalysisV1beta1(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      dir: map['dir'] == null ? null : (map['dir']! as String).input(),
      env: map['env'] == null ? null : ((map['env']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      waitFor: map['waitFor'] == null ? null : ((map['waitFor']! as List).cast<String>()).input(),
    );
  }
}

