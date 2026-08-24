// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupRequireIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessGroupRequireIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupRequireIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
