// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireEmailList].
  /// [id] The ID of a previously created email list.
  const ZeroTrustAccessApplicationPolicyRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireEmailList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
