// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to another Cloud SQL instance.
class InstanceReferenceSqladminV1beta4 {
  /// The name of the Cloud SQL instance being referenced. This does not include the project ID.
  final pulumi.Input<String>? name;
  /// The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  final pulumi.Input<String>? project;
  /// The region of the Cloud SQL instance being referenced.
  final pulumi.Input<String>? region;

  /// Creates a new [InstanceReferenceSqladminV1beta4].
  /// [name] The name of the Cloud SQL instance being referenced. This does not include the project ID.
  /// [project] The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  /// [region] The region of the Cloud SQL instance being referenced.
  const InstanceReferenceSqladminV1beta4({
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory InstanceReferenceSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return InstanceReferenceSqladminV1beta4(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
