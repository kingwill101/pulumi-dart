// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessGroupIsDefaultIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
