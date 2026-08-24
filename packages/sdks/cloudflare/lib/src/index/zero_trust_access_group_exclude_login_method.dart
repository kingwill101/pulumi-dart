// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeLoginMethod {
  /// The ID of an identity provider.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessGroupExcludeLoginMethod].
  /// [id] The ID of an identity provider.
  const ZeroTrustAccessGroupExcludeLoginMethod({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessGroupExcludeLoginMethod.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeLoginMethod(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
