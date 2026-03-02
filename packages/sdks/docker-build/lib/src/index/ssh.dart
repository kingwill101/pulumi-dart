// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SSH {
  /// Useful for distinguishing different servers that are part of the same
  /// build.
  ///
  /// A value of `default` is appropriate if only dealing with a single host.
  final pulumi.Input<String> id;
  /// SSH agent socket or private keys to expose to the build under the given
  /// identifier.
  ///
  /// Defaults to `[$SSH_AUTH_SOCK]`.
  ///
  /// Note that your keys are **not** automatically added when using an
  /// agent. Run `ssh-add -l` locally to confirm which public keys are
  /// visible to the agent; these will be exposed to your build.
  final pulumi.Input<List<String>>? paths;

  /// Creates a new [SSH].
  /// [id] Useful for distinguishing different servers that are part of the same
  /// [paths] SSH agent socket or private keys to expose to the build under the given
  SSH({
    required this.id,
    this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'paths': ?paths,
    };
  }

  factory SSH.fromMap(Map<String, dynamic> map) {
    return SSH(
      id: (map['id'] as String).input(),
      paths: map['paths'] == null ? null : ((map['paths']! as List).cast<String>()).input(),
    );
  }
}

