// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessApplicationsResultPolicyIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyIncludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
