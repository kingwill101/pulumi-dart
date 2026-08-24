// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupRequireGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessGroupRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupRequireGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
