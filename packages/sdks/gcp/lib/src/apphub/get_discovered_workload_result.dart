// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovered_workload_workload_property.dart';
import 'get_discovered_workload_workload_reference.dart';

/// Result data returned by getDiscoveredWorkload.
class GetDiscoveredWorkloadResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location that the underlying resource resides in.
  final String? location;
  /// Resource name of a Workload. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}".
  final String? name;
  final String? project;
  /// Properties of an underlying compute resource that can comprise a Workload. Structure is documented below
  final List<GetDiscoveredWorkloadWorkloadProperty>? workloadProperties;
  /// Reference to an underlying networking resource that can comprise a Workload. Structure is documented below
  final List<GetDiscoveredWorkloadWorkloadReference>? workloadReferences;
  final String? workloadUri;

  /// Creates a new [GetDiscoveredWorkloadResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location that the underlying resource resides in.
  /// [name] Resource name of a Workload. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}".
  /// [project] Optional.
  /// [workloadProperties] Properties of an underlying compute resource that can comprise a Workload. Structure is documented below
  /// [workloadReferences] Reference to an underlying networking resource that can comprise a Workload. Structure is documented below
  /// [workloadUri] Optional.
  const GetDiscoveredWorkloadResult({
    this.id,
    this.location,
    this.name,
    this.project,
    this.workloadProperties,
    this.workloadReferences,
    this.workloadUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'workloadProperties': ?(() { final guardedValue = workloadProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiscoveredWorkloadWorkloadProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workloadReferences': ?(() { final guardedValue = workloadReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiscoveredWorkloadWorkloadReference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workloadUri': ?workloadUri,
    };
  }

  factory GetDiscoveredWorkloadResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredWorkloadResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadProperties: (() { final guardedValue = map['workloadProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiscoveredWorkloadWorkloadProperty>(guardedValue, (value) => GetDiscoveredWorkloadWorkloadProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      workloadReferences: (() { final guardedValue = map['workloadReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiscoveredWorkloadWorkloadReference>(guardedValue, (value) => GetDiscoveredWorkloadWorkloadReference.fromMap((value as Map).cast<String, dynamic>())); })(),
      workloadUri: (() { final guardedValue = map['workloadUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
