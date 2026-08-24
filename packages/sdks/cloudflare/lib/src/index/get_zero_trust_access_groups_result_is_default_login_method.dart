// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessGroupsResultIsDefaultLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
