// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hub Item.
class HubResponse {
  /// Resource Id.
  final pulumi.Input<String>? resourceId;

  /// Resource Type.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [HubResponse].
  /// [resourceId] Resource Id.
  /// [resourceType] Resource Type.
  HubResponse({this.resourceId, this.resourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory HubResponse.fromMap(Map<String, dynamic> map) {
    return HubResponse(
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
