// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const ZeroTrustAccessApplicationPolicyRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
