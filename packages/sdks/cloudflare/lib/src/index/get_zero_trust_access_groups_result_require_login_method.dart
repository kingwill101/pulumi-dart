// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessGroupsResultRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
