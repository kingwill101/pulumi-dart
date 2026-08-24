// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyRequireEmailList].
  /// [id] The ID of a previously created email list.
  const ZeroTrustAccessPolicyRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyRequireEmailList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
