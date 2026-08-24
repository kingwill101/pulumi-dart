// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessApplicationPolicyIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyIncludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
