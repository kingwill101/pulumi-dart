// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyIncludeLoginMethod].
  /// [id] The ID of an identity provider.
  const ZeroTrustAccessPolicyIncludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyIncludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
