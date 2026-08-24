// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupsResultExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultExcludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
