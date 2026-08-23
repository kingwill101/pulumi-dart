// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] This message specifies a header location to extract JWT token. This message specifies a header location to extract JWT token.
class JwtHeaderResponse {
  /// The HTTP header name.
  final pulumi.Input<String> name;
  /// The value prefix. The value format is "value_prefix" For example, for "Authorization: Bearer ", value_prefix="Bearer " with a space at the end.
  final pulumi.Input<String> valuePrefix;

  /// Creates a new [JwtHeaderResponse].
  /// [name] The HTTP header name.
  /// [valuePrefix] The value prefix. The value format is "value_prefix" For example, for "Authorization: Bearer ", value_prefix="Bearer " with a space at the end.
  const JwtHeaderResponse({
    required this.name,
    required this.valuePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'valuePrefix': valuePrefix,
    };
  }

  factory JwtHeaderResponse.fromMap(Map<String, dynamic> map) {
    return JwtHeaderResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      valuePrefix: pulumi.Input.fromValue(map['valuePrefix'] as String),
    );
  }
}
