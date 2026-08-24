// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupExcludeIpList].
  /// [id] The ID of a previously created IP list.
  const ZeroTrustAccessGroupExcludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupExcludeIpList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
