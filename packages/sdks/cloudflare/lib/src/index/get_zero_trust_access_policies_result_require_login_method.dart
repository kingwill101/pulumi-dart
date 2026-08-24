// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessPoliciesResultRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
