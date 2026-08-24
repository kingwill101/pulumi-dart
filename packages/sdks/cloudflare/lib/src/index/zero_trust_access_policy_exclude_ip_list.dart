// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const ZeroTrustAccessPolicyExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyExcludeIpList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
