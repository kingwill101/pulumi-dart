// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const GetZeroTrustAccessGroupExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupExcludeIpList.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
