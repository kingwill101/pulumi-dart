// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultAuthMethod {
  /// The type of authentication method https://datatracker.ietf.org/doc/html/rfc8176#section-2.
  final pulumi.Input<String> authMethod;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultAuthMethod].
  /// [authMethod] The type of authentication method https://datatracker.ietf.org/doc/html/rfc8176#section-2.
  const GetZeroTrustAccessGroupsResultIsDefaultAuthMethod({
    required this.authMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': authMethod,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultAuthMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultAuthMethod(
      authMethod: pulumi.Input.fromValue(map['authMethod'] as String),
    );
  }
}
