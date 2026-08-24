// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
