// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessGroupRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const GetZeroTrustAccessGroupRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessGroupRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
