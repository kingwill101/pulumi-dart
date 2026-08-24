// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessGroupIsDefaultLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
