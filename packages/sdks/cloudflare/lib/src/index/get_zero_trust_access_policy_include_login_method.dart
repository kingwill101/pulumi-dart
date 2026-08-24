// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessPolicyIncludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
