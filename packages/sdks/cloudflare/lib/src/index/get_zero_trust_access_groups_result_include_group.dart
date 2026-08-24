// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupsResultIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultIncludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
