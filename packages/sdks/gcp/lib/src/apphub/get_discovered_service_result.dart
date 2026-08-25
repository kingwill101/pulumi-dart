// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovered_service_service_property.dart';
import 'get_discovered_service_service_reference.dart';

/// Result data returned by getDiscoveredService.
class GetDiscoveredServiceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location that the underlying resource resides in.
  final String? location;
  /// Resource name of a Service. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}".
  final String? name;
  final String? project;
  /// Properties of an underlying compute resource that can comprise a Service. Structure is documented below
  final List<GetDiscoveredServiceServiceProperty>? serviceProperties;
  /// Reference to an underlying networking resource that can comprise a Service. Structure is documented below
  final List<GetDiscoveredServiceServiceReference>? serviceReferences;
  final String? serviceUri;

  /// Creates a new [GetDiscoveredServiceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location that the underlying resource resides in.
  /// [name] Resource name of a Service. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}".
  /// [project] Optional.
  /// [serviceProperties] Properties of an underlying compute resource that can comprise a Service. Structure is documented below
  /// [serviceReferences] Reference to an underlying networking resource that can comprise a Service. Structure is documented below
  /// [serviceUri] Optional.
  const GetDiscoveredServiceResult({
    this.id,
    this.location,
    this.name,
    this.project,
    this.serviceProperties,
    this.serviceReferences,
    this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceProperties': ?(() { final guardedValue = serviceProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiscoveredServiceServiceProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceReferences': ?(() { final guardedValue = serviceReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDiscoveredServiceServiceReference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceUri': ?serviceUri,
    };
  }

  factory GetDiscoveredServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredServiceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceProperties: (() { final guardedValue = map['serviceProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiscoveredServiceServiceProperty>(guardedValue, (value) => GetDiscoveredServiceServiceProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceReferences: (() { final guardedValue = map['serviceReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDiscoveredServiceServiceReference>(guardedValue, (value) => GetDiscoveredServiceServiceReference.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceUri: (() { final guardedValue = map['serviceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
