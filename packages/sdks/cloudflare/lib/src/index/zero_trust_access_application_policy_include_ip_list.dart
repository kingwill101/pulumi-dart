// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const ZeroTrustAccessApplicationPolicyIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeIpList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
