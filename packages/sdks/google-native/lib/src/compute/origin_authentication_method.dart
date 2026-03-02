// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwt.dart';

/// [Deprecated] Configuration for the origin authentication method. Configuration for the origin authentication method.
class OriginAuthenticationMethod {
  final pulumi.Input<Jwt>? jwt;

  /// Creates a new [OriginAuthenticationMethod].
  /// [jwt] Optional.
  OriginAuthenticationMethod({
    this.jwt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwt': ?pulumi.Input.mapOptionalInputValue<Jwt, Map<String, dynamic>>(jwt, (value) => value.toMap()),
    };
  }

  factory OriginAuthenticationMethod.fromMap(Map<String, dynamic> map) {
    return OriginAuthenticationMethod(
      jwt: map['jwt'] == null ? null : (Jwt.fromMap((map['jwt'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

