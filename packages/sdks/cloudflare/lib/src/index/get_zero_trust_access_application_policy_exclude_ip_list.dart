// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessApplicationPolicyExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyExcludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
