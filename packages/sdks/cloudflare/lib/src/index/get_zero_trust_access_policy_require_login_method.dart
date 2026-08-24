// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPolicyRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessPolicyRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPolicyRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
