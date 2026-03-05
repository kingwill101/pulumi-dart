// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] This message specifies a header location to extract JWT token. This message specifies a header location to extract JWT token.
class JwtHeader {
  /// The HTTP header name.
  final pulumi.Input<String>? name;
  /// The value prefix. The value format is "value_prefix" For example, for "Authorization: Bearer ", value_prefix="Bearer " with a space at the end.
  final pulumi.Input<String>? valuePrefix;

  /// Creates a new [JwtHeader].
  /// [name] The HTTP header name.
  /// [valuePrefix] The value prefix. The value format is "value_prefix" For example, for "Authorization: Bearer ", value_prefix="Bearer " with a space at the end.
  JwtHeader({
    this.name,
    this.valuePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'valuePrefix': ?valuePrefix,
    };
  }

  factory JwtHeader.fromMap(Map<String, dynamic> map) {
    return JwtHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valuePrefix: (() { final guardedValue = map['valuePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

