// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Jwt {
  /// The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  final pulumi.Input<String>? compactJwt;

  /// Creates a new [Jwt].
  /// [compactJwt] The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  Jwt({
    this.compactJwt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compactJwt': ?compactJwt,
    };
  }

  factory Jwt.fromMap(Map<String, dynamic> map) {
    return Jwt(
      compactJwt: (() { final guardedValue = map['compactJwt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

