// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupRequireEmailList].
  /// [id] The ID of a previously created email list.
  const ZeroTrustAccessGroupRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupRequireEmailList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
