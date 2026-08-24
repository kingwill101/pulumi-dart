// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupIncludeEmailList].
  /// [id] The ID of a previously created email list.
  const ZeroTrustAccessGroupIncludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupIncludeEmailList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
