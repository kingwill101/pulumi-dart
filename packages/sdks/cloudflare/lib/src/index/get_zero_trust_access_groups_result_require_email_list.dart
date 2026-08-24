// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultRequireEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessGroupsResultRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultRequireEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
