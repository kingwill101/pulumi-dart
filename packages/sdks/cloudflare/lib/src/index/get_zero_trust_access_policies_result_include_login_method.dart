// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessPoliciesResultIncludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
