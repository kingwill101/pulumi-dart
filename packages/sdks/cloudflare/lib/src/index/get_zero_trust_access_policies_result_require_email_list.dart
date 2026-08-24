// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessPoliciesResultRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
