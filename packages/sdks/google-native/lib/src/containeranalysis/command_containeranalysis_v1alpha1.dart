// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Command describes a step performed as part of the build pipeline.
class CommandContaineranalysisV1alpha1 {
  /// Command-line arguments used when executing this Command.
  final pulumi.Input<List<String>>? args;
  /// Working directory (relative to project source root) used when running this Command.
  final pulumi.Input<String>? dir;
  /// Environment variables set before running this Command.
  final pulumi.Input<List<String>>? env;
  /// Optional unique identifier for this Command, used in wait_for to reference this Command as a dependency.
  final pulumi.Input<String>? id;
  /// Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  final pulumi.Input<String>? name;
  /// The ID(s) of the Command(s) that this Command depends on.
  final pulumi.Input<List<String>>? waitFor;

  /// Creates a new [CommandContaineranalysisV1alpha1].
  /// [args] Command-line arguments used when executing this Command.
  /// [dir] Working directory (relative to project source root) used when running this Command.
  /// [env] Environment variables set before running this Command.
  /// [id] Optional unique identifier for this Command, used in wait_for to reference this Command as a dependency.
  /// [name] Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.
  /// [waitFor] The ID(s) of the Command(s) that this Command depends on.
  CommandContaineranalysisV1alpha1({
    this.args,
    this.dir,
    this.env,
    this.id,
    this.name,
    this.waitFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'dir': ?dir,
      'env': ?env,
      'id': ?id,
      'name': ?name,
      'waitFor': ?waitFor,
    };
  }

  factory CommandContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return CommandContaineranalysisV1alpha1(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      dir: map['dir'] == null ? null : (map['dir'] as String).input(),
      env: map['env'] == null ? null : ((map['env'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      waitFor: map['waitFor'] == null ? null : ((map['waitFor'] as List).cast<String>()).input(),
    );
  }
}

