// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessPolicyIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
