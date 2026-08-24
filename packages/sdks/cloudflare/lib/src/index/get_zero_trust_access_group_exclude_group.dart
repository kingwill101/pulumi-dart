// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupExcludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
