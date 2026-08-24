// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultRequireIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultRequireIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessGroupsResultRequireIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultRequireIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultRequireIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
