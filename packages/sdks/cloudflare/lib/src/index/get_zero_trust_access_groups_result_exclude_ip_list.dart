// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessGroupsResultExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultExcludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
