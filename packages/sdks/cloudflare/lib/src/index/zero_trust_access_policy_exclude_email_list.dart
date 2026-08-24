// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const ZeroTrustAccessPolicyExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
