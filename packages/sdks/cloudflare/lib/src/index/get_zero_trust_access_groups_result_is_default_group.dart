// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupsResultIsDefaultGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
