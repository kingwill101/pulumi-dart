// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessPoliciesResultIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
