// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_key_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_ssl_key_key_args_doc}
class KeyArgs {
  /// Content of SSL certificate key present on local Disk
  final pulumi.Input<String> content;
  /// Full Path Name of ssl key
  final pulumi.Input<String>? fullPath;
  /// Name of the SSL Certificate key to be Imported on to BIGIP
  final pulumi.Input<String> name;
  /// Partition of ssl certificate key
  final pulumi.Input<String>? partition;
  /// Passphrase on key.
  final pulumi.Input<String>? passphrase;

  /// Creates a new [KeyArgs].
  /// [content] Content of SSL certificate key present on local Disk
  /// [fullPath] Full Path Name of ssl key
  /// [name] Name of the SSL Certificate key to be Imported on to BIGIP
  /// [partition] Partition of ssl certificate key
  /// [passphrase] Passphrase on key.
  KeyArgs({
    required this.content,
    this.fullPath,
    required this.name,
    this.partition,
    this.passphrase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fullPath': ?fullPath,
      'name': name,
      'partition': ?partition,
      'passphrase': ?passphrase,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      content: pulumi.Input.fromValue(map['content'] as String),
      fullPath: (() { final guardedValue = map['fullPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

