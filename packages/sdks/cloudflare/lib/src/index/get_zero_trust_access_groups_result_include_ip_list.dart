// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessGroupsResultIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultIncludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
