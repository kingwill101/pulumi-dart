// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessGroupExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupExcludeGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
