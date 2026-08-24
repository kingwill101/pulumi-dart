// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupIsDefaultGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
