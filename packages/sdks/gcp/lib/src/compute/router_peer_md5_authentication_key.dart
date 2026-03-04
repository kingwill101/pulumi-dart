// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterPeerMd5AuthenticationKey {
  /// Value of the key.
  final pulumi.Input<String> key;

  /// Name of this BGP peer. The name must be 1-63 characters long,
  /// and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String> name;

  /// Creates a new [RouterPeerMd5AuthenticationKey].
  /// [key] Value of the key.
  /// [name] Name of this BGP peer. The name must be 1-63 characters long,
  RouterPeerMd5AuthenticationKey({required this.key, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'name': name};
  }

  factory RouterPeerMd5AuthenticationKey.fromMap(Map<String, dynamic> map) {
    return RouterPeerMd5AuthenticationKey(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
