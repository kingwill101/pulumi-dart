// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovered_service_service_property.dart';
import 'get_discovered_service_service_reference.dart';

/// Result data returned by getDiscoveredService.
class GetDiscoveredServiceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location that the underlying resource resides in.
  final String location;
  /// Resource name of a Service. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}".
  final String name;
  final String? project;
  /// Properties of an underlying compute resource that can comprise a Service. Structure is documented below
  final List<GetDiscoveredServiceServiceProperty> serviceProperties;
  /// Reference to an underlying networking resource that can comprise a Service. Structure is documented below
  final List<GetDiscoveredServiceServiceReference> serviceReferences;
  final String serviceUri;

  /// Creates a new [GetDiscoveredServiceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location that the underlying resource resides in.
  /// [name] Resource name of a Service. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}".
  /// [project] Optional.
  /// [serviceProperties] Properties of an underlying compute resource that can comprise a Service. Structure is documented below
  /// [serviceReferences] Reference to an underlying networking resource that can comprise a Service. Structure is documented below
  /// [serviceUri] Required.
  const GetDiscoveredServiceResult({
    required this.id,
    required this.location,
    required this.name,
    this.project,
    required this.serviceProperties,
    required this.serviceReferences,
    required this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'project': ?project,
      'serviceProperties': pulumi.Input.encodeList<GetDiscoveredServiceServiceProperty, Map<String, dynamic>>(serviceProperties, (value) => value.toMap()),
      'serviceReferences': pulumi.Input.encodeList<GetDiscoveredServiceServiceReference, Map<String, dynamic>>(serviceReferences, (value) => value.toMap()),
      'serviceUri': serviceUri,
    };
  }

  factory GetDiscoveredServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredServiceResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceProperties: pulumi.Input.decodeList<GetDiscoveredServiceServiceProperty>(map['serviceProperties']!, (value) => GetDiscoveredServiceServiceProperty.fromMap((value as Map).cast<String, dynamic>())),
      serviceReferences: pulumi.Input.decodeList<GetDiscoveredServiceServiceReference>(map['serviceReferences']!, (value) => GetDiscoveredServiceServiceReference.fromMap((value as Map).cast<String, dynamic>())),
      serviceUri: map['serviceUri'] as String,
    );
  }
}
