// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSshkeysSshkey {
  /// The date this key was added.
  final pulumi.Input<String> created;
  /// The ID of the SSH Key.
  final pulumi.Input<String>? id;
  /// The label of the SSH Key.
  final pulumi.Input<String> label;
  /// The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  final pulumi.Input<String> sshKey;

  /// Creates a new [GetSshkeysSshkey].
  /// [created] The date this key was added.
  /// [id] The ID of the SSH Key.
  /// [label] The label of the SSH Key.
  /// [sshKey] The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  const GetSshkeysSshkey({
    required this.created,
    this.id,
    required this.label,
    required this.sshKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': ?id,
      'label': label,
      'sshKey': sshKey,
    };
  }

  factory GetSshkeysSshkey.fromMap(Map<String, dynamic> map) {
    return GetSshkeysSshkey(
      created: pulumi.Input.fromValue(map['created'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      sshKey: pulumi.Input.fromValue(map['sshKey'] as String),
    );
  }
}

