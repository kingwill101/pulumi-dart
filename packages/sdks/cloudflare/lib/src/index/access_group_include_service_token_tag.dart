// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeServiceTokenTag {
  /// The tag key to match. Keys are case-sensitive and may contain Unicode letters and digits, underscores, periods, and hyphens.
  final pulumi.Input<String> key;
  /// The tag value to match. Values are case-sensitive, preserve whitespace, and must not contain NUL characters.
  final pulumi.Input<String> value;

  /// Creates a new [AccessGroupIncludeServiceTokenTag].
  /// [key] The tag key to match. Keys are case-sensitive and may contain Unicode letters and digits, underscores, periods, and hyphens.
  /// [value] The tag value to match. Values are case-sensitive, preserve whitespace, and must not contain NUL characters.
  const AccessGroupIncludeServiceTokenTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory AccessGroupIncludeServiceTokenTag.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeServiceTokenTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
