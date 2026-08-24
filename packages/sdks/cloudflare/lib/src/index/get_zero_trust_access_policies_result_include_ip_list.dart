// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessPoliciesResultIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
