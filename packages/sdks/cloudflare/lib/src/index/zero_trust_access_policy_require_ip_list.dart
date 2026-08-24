// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyRequireIpList].
  /// [id] The ID of a previously created IP list.
  const ZeroTrustAccessPolicyRequireIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyRequireIpList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
