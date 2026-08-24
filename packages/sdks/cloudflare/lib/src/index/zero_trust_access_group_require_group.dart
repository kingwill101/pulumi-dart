// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupRequireGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessGroupRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupRequireGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
