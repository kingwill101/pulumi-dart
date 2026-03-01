// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ssh_key_ssh_key_args_doc}
/// The set of arguments for SshKey.
/// {@endtemplate}
/// {@macro pulumi_index_ssh_key_ssh_key_args_doc}
class SshKeyArgs {
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the SSH Key.
  final pulumi.Input<String>? name;
  /// Public key of the SSH Key pair. If this is a file, it can be read using the `file` interpolation function.
  final pulumi.Input<String> publicKey;

  /// Creates a new [SshKeyArgs].
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the SSH Key.
  /// [publicKey] Public key of the SSH Key pair. If this is a file, it can be read using the `file` interpolation function.
  SshKeyArgs({
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    required pulumi.Output<String> publicKey,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKey = pulumi.Input.asInput<String>(publicKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'name': ?name,
      'publicKey': publicKey,
    };
  }

  factory SshKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshKeyArgs(
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKey: pulumi.Output.create<String>(map['publicKey'] as String),
    );
  }
}

