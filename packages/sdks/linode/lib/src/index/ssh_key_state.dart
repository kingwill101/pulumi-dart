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
  SshKeyState({
    pulumi.Output<String>? created,
    pulumi.Output<String>? label,
    pulumi.Output<String>? sshKey,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      label = pulumi.Input.asOptionalInput<String>(label),
      sshKey = pulumi.Input.asOptionalInput<String>(sshKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'label': ?label,
      'sshKey': ?sshKey,
    };
  }

  factory SshKeyState.fromMap(Map<String, dynamic> map) {
    return SshKeyState(
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      sshKey: map['sshKey'] == null ? null : pulumi.Output.create<String>(map['sshKey'] as String),
    );
  }
}

