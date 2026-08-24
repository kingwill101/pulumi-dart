// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessApplicationPolicyIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
