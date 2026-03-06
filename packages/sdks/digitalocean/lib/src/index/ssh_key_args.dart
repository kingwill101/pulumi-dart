// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ssh_key_ssh_key_args_doc}
/// The set of arguments for SshKey.
/// {@endtemplate}
/// {@macro pulumi_index_ssh_key_ssh_key_args_doc}
class SshKeyArgs {
  /// The name of the SSH key for identification
  final pulumi.Input<String>? name;
  /// The public key. If this is a file, it
  /// can be read using the file interpolation function
  final pulumi.Input<String> publicKey;

  /// Creates a new [SshKeyArgs].
  /// [name] The name of the SSH key for identification
  /// [publicKey] The public key. If this is a file, it
  const SshKeyArgs({
    this.name,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicKey': publicKey,
    };
  }

  factory SshKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshKeyArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}

