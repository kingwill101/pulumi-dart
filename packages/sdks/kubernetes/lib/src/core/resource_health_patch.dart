// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceHealth represents the health of a resource. It has the latest device health information. This is a part of KEP https://kep.k8s.io/4680.
class ResourceHealthPatch {
  /// Health of the resource. can be one of:
  /// - Healthy: operates as normal
  /// - Unhealthy: reported unhealthy. We consider this a temporary health issue
  /// since we do not have a mechanism today to distinguish
  /// temporary and permanent issues.
  /// - Unknown: The status cannot be determined.
  /// For example, Device Plugin got unregistered and hasn't been re-registered since.
  ///
  /// In future we may want to introduce the PermanentlyUnhealthy Status.
  final pulumi.Input<String>? health;

  /// ResourceID is the unique identifier of the resource. See the ResourceID type for more information.
  final pulumi.Input<String>? resourceID;

  /// Creates a new [ResourceHealthPatch].
  /// [health] Health of the resource. can be one of:
  /// [resourceID] ResourceID is the unique identifier of the resource. See the ResourceID type for more information.
  ResourceHealthPatch({this.health, this.resourceID});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'health': ?health, 'resourceID': ?resourceID};
  }

  factory ResourceHealthPatch.fromMap(Map<String, dynamic> map) {
    return ResourceHealthPatch(
      health: (() {
        final guardedValue = map['health'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceID: (() {
        final guardedValue = map['resourceID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
