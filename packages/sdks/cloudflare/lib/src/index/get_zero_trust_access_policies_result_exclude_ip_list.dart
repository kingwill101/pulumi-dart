// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessPoliciesResultExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
