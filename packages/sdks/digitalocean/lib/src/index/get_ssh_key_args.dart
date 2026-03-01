// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_ssh_key_get_ssh_key_args_doc}
/// Arguments for getSshKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_ssh_key_get_ssh_key_args_doc}
class GetSshKeyArgs {
  /// The name of the ssh key.
  final pulumi.Input<String> name;

  /// Creates a new [GetSshKeyArgs].
  /// [name] The name of the ssh key.
  GetSshKeyArgs({
    required pulumi.Output<String> name,
  }) :
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetSshKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshKeyArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

