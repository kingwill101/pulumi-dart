// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyExcludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyExcludeLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessApplicationsResultPolicyExcludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyExcludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyExcludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
