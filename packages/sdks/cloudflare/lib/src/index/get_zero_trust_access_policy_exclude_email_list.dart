// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPolicyExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessPolicyExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPolicyExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
