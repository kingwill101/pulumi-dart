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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

