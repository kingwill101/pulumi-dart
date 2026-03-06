// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SshKey resources.
class SshKeyState {
  /// The date this SSH Key was created.
  final pulumi.Input<String>? created;
  /// A label for the SSH Key.
  final pulumi.Input<String>? label;
  /// The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  final pulumi.Input<String>? sshKey;

  /// Creates a new [SshKeyState].
  /// [created] The date this SSH Key was created.
  /// [label] A label for the SSH Key.
  /// [sshKey] The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  const SshKeyState({
    this.created,
    this.label,
    this.sshKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'label': ?label,
      'sshKey': ?sshKey,
    };
  }

  factory SshKeyState.fromMap(Map<String, dynamic> map) {
    return SshKeyState(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshKey: (() { final guardedValue = map['sshKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

