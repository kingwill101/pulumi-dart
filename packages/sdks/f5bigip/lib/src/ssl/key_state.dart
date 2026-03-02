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
    this.content,
    this.fullPath,
    this.name,
    this.partition,
    this.passphrase,
  });

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
      content: map['content'] == null ? null : (map['content'] as String).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partition: map['partition'] == null ? null : (map['partition'] as String).input(),
      passphrase: map['passphrase'] == null ? null : (map['passphrase'] as String).input(),
    );
  }
}

