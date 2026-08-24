// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessApplicationPolicyExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
