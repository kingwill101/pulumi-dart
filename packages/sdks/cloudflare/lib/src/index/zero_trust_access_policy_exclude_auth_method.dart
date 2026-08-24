// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeAuthMethod {
  /// The type of authentication method https://datatracker.ietf.org/doc/html/rfc8176#section-2.
  final pulumi.Input<String> authMethod;

  /// Creates a new [ZeroTrustAccessPolicyExcludeAuthMethod].
  /// [authMethod] The type of authentication method https://datatracker.ietf.org/doc/html/rfc8176#section-2.
  const ZeroTrustAccessPolicyExcludeAuthMethod({
    required this.authMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': authMethod,
    };
  }

  factory ZeroTrustAccessPolicyExcludeAuthMethod.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeAuthMethod(
      authMethod: pulumi.Input.fromValue(map['authMethod'] as String),
    );
  }
}
