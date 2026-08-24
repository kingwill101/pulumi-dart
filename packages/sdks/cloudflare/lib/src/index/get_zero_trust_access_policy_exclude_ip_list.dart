// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPolicyExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessPolicyExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPolicyExcludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
