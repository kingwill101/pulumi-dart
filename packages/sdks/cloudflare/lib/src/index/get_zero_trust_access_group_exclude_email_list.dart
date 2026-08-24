// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupExcludeEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupExcludeEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessGroupExcludeEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupExcludeEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExcludeEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
