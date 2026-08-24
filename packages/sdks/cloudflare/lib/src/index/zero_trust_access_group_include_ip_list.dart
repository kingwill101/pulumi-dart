// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeIpList {
  /// The ID of a previously created IP list.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupIncludeIpList].
  /// [id] The ID of a previously created IP list.
  const ZeroTrustAccessGroupIncludeIpList({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupIncludeIpList.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeIpList(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
