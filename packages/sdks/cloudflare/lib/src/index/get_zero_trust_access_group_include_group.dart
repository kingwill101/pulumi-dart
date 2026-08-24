// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupIncludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
