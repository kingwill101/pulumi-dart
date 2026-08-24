// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupRequireEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessGroupRequireEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupRequireEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
