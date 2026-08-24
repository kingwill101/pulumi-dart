// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPolicyRequireIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessPolicyRequireIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPolicyRequireIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
