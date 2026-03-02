// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hub Item.
class Hub {
  /// Resource Id.
  final pulumi.Input<String>? resourceId;
  /// Resource Type.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [Hub].
  /// [resourceId] Resource Id.
  /// [resourceType] Resource Type.
  Hub({
    this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory Hub.fromMap(Map<String, dynamic> map) {
    return Hub(
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
    );
  }
}

