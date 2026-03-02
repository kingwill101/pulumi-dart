// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SshPublicKey resources.
class SshPublicKeyState {
  /// The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created.
  final pulumi.Input<String>? name;
  /// SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format.
  final pulumi.Input<String>? publicKey;
  /// The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the SSH Public Key.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SshPublicKeyState].
  /// [location] The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
  /// [name] The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created.
  /// [publicKey] SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format.
  /// [resourceGroupName] The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
  /// [tags] A mapping of tags which should be assigned to the SSH Public Key.
  SshPublicKeyState({
    this.location,
    this.name,
    this.publicKey,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'publicKey': ?publicKey,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SshPublicKeyState.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

