// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpacesKeyGrant {
  /// The name of the bucket to grant the key access to.
  final pulumi.Input<String> bucket;

  /// The permission to grant the key. Valid values are `read`, `readwrite`, or `fullaccess`.
  final pulumi.Input<String> permission;

  /// Creates a new [GetSpacesKeyGrant].
  /// [bucket] The name of the bucket to grant the key access to.
  /// [permission] The permission to grant the key. Valid values are `read`, `readwrite`, or `fullaccess`.
  GetSpacesKeyGrant({required this.bucket, required this.permission});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'permission': permission};
  }

  factory GetSpacesKeyGrant.fromMap(Map<String, dynamic> map) {
    return GetSpacesKeyGrant(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}
