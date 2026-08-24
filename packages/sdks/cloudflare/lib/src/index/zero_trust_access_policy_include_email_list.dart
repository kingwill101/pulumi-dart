// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const ZeroTrustAccessPolicyIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
