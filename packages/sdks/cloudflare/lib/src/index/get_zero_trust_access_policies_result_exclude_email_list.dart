// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessPoliciesResultExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
