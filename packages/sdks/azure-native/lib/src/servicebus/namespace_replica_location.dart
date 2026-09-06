// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Namespace replication properties
class NamespaceReplicaLocation {
  /// Azure regions where a replica of the namespace is maintained
  final pulumi.Input<String?>? locationName;
  /// GeoDR Role Types
  final pulumi.Input<dynamic>? roleType;

  /// Creates a new [NamespaceReplicaLocation].
  /// [locationName] Azure regions where a replica of the namespace is maintained
  /// [roleType] GeoDR Role Types
  const NamespaceReplicaLocation({
    this.locationName,
    this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': ?locationName,
      'roleType': ?roleType,
    };
  }

  factory NamespaceReplicaLocation.fromMap(Map<String, dynamic> map) {
    return NamespaceReplicaLocation(
      locationName: (() { final guardedValue = map['locationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
