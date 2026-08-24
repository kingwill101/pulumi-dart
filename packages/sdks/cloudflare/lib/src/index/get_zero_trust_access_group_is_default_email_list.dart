// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultEmailList {
  /// The ID of a previously created email list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultEmailList].
  /// [id] The ID of a previously created email list.
  const GetZeroTrustAccessGroupIsDefaultEmailList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultEmailList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultEmailList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
