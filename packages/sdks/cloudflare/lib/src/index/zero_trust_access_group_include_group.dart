// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessGroupIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupIncludeGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
