// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_ssh_public_key_get_ssh_public_key_args_doc}
/// Arguments for getSshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_compute_get_ssh_public_key_get_ssh_public_key_args_doc}
class GetSshPublicKeyArgs {
  /// The name of this SSH Public Key.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the SSH Public Key exists.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the SSH Public Key.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSshPublicKeyArgs].
  /// [name] The name of this SSH Public Key.
  /// [resourceGroupName] The name of the Resource Group where the SSH Public Key exists.
  /// [tags] A mapping of tags which should be assigned to the SSH Public Key.
  GetSshPublicKeyArgs({
    required this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetSshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
