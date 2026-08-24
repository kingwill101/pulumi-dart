// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupRequireLoginMethod].
  /// [id] The ID of an identity provider.
  const ZeroTrustAccessGroupRequireLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupRequireLoginMethod.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
