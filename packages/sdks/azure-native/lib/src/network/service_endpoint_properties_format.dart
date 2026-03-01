// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// The service endpoint properties.
class ServiceEndpointPropertiesFormat {
  /// A list of locations.
  final List<String>? locations;
  /// SubResource as network identifier.
  final SubResource? networkIdentifier;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The type of the endpoint service.
  final String? service;

  /// Creates a new [ServiceEndpointPropertiesFormat].
  /// [locations] A list of locations.
  /// [networkIdentifier] SubResource as network identifier.
  /// [provisioningState] The provisioning state of the resource.
  /// [service] The type of the endpoint service.
  ServiceEndpointPropertiesFormat({
    this.locations,
    this.networkIdentifier,
    this.provisioningState,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'networkIdentifier': ?networkIdentifier == null ? null : networkIdentifier!.toMap(),
      'provisioningState': ?provisioningState,
      'service': ?service,
    };
  }

  factory ServiceEndpointPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPropertiesFormat(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      networkIdentifier: map['networkIdentifier'] == null ? null : SubResource.fromMap((map['networkIdentifier'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}

