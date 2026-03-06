// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterMd5AuthenticationKeys {
  /// Value of the key used for MD5 authentication.
  final pulumi.Input<String> key;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String> name;

  /// Creates a new [RouterMd5AuthenticationKeys].
  /// [key] Value of the key used for MD5 authentication.
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  const RouterMd5AuthenticationKeys({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory RouterMd5AuthenticationKeys.fromMap(Map<String, dynamic> map) {
    return RouterMd5AuthenticationKeys(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

