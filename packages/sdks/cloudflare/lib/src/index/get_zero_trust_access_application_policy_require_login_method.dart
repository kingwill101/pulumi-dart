// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessApplicationPolicyRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
