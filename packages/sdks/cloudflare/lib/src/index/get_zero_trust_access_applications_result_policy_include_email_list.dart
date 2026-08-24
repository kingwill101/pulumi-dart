// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
