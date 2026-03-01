// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Key resources.
class KeyState {
  /// Content of SSL certificate key present on local Disk
  final pulumi.Input<String>? content;
  /// Full Path Name of ssl key
  final pulumi.Input<String>? fullPath;
  /// Name of the SSL Certificate key to be Imported on to BIGIP
  final pulumi.Input<String>? name;
  /// Partition of ssl certificate key
  final pulumi.Input<String>? partition;
  /// Passphrase on key.
  final pulumi.Input<String>? passphrase;

  /// Creates a new [KeyState].
  /// [content] Content of SSL certificate key present on local Disk
  /// [fullPath] Full Path Name of ssl key
  /// [name] Name of the SSL Certificate key to be Imported on to BIGIP
  /// [partition] Partition of ssl certificate key
  /// [passphrase] Passphrase on key.
  KeyState({
    pulumi.Output<String>? content,
    pulumi.Output<String>? fullPath,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? passphrase,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      passphrase = pulumi.Input.asOptionalInput<String>(passphrase);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'fullPath': ?fullPath,
      'name': ?name,
      'partition': ?partition,
      'passphrase': ?passphrase,
    };
  }

  factory KeyState.fromMap(Map<String, dynamic> map) {
    return KeyState(
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      fullPath: map['fullPath'] == null ? null : pulumi.Output.create<String>(map['fullPath'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      passphrase: map['passphrase'] == null ? null : pulumi.Output.create<String>(map['passphrase'] as String),
    );
  }
}

