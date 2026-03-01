// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ssh_key_get_ssh_key_args_doc}
/// Arguments for getSshKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_ssh_key_get_ssh_key_args_doc}
class GetSshKeyArgs {
  /// The ID of the SSH Key
  final pulumi.Input<String>? id;
  /// The label of the SSH Key to select.
  final pulumi.Input<String> label;

  /// Creates a new [GetSshKeyArgs].
  /// [id] The ID of the SSH Key
  /// [label] The label of the SSH Key to select.
  GetSshKeyArgs({
    pulumi.Output<String>? id,
    required pulumi.Output<String> label,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      label = pulumi.Input.asInput<String>(label);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'label': label,
    };
  }

  factory GetSshKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshKeyArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      label: pulumi.Output.create<String>(map['label'] as String),
    );
  }
}

