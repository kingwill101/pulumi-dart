// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyExcludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyExcludeLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessApplicationPolicyExcludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyExcludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyExcludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
