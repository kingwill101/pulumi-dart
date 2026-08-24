// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupIncludeLoginMethod].
  /// [id] The ID of an identity provider.
  const ZeroTrustAccessGroupIncludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupIncludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
