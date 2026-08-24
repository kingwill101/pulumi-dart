// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeAuthMethod {
  /// The type of authentication method https://datatracker.ietf.org/doc/html/rfc8176#section-2.
  final pulumi.Input<String> authMethod;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeAuthMethod].
  /// [authMethod] The type of authentication method https://datatracker.ietf.org/doc/html/rfc8176#section-2.
  const ZeroTrustAccessApplicationPolicyExcludeAuthMethod({
    required this.authMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': authMethod,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeAuthMethod.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeAuthMethod(
      authMethod: pulumi.Input.fromValue(map['authMethod'] as String),
    );
  }
}
