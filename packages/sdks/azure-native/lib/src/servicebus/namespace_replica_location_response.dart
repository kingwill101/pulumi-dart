// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Namespace replication properties
class NamespaceReplicaLocationResponse {
  /// Azure regions where a replica of the namespace is maintained
  final pulumi.Input<String?>? locationName;
  /// GeoDR Role Types
  final pulumi.Input<String?>? roleType;

  /// Creates a new [NamespaceReplicaLocationResponse].
  /// [locationName] Azure regions where a replica of the namespace is maintained
  /// [roleType] GeoDR Role Types
  const NamespaceReplicaLocationResponse({
    this.locationName,
    this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationName': ?locationName,
      'roleType': ?roleType,
    };
  }

  factory NamespaceReplicaLocationResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceReplicaLocationResponse(
      locationName: (() { final guardedValue = map['locationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
