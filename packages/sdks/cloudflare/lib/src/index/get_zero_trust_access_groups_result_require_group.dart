// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultRequireGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupsResultRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultRequireGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
