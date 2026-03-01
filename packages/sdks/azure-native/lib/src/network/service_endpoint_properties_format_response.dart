// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// The service endpoint properties.
class ServiceEndpointPropertiesFormatResponse {
  /// A list of locations.
  final List<String>? locations;
  /// SubResource as network identifier.
  final SubResourceResponse? networkIdentifier;
  /// The provisioning state of the service endpoint resource.
  final String provisioningState;
  /// The type of the endpoint service.
  final String? service;

  /// Creates a new [ServiceEndpointPropertiesFormatResponse].
  /// [locations] A list of locations.
  /// [networkIdentifier] SubResource as network identifier.
  /// [provisioningState] The provisioning state of the service endpoint resource.
  /// [service] The type of the endpoint service.
  ServiceEndpointPropertiesFormatResponse({
    this.locations,
    this.networkIdentifier,
    required this.provisioningState,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'networkIdentifier': ?networkIdentifier == null ? null : networkIdentifier!.toMap(),
      'provisioningState': provisioningState,
      'service': ?service,
    };
  }

  factory ServiceEndpointPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPropertiesFormatResponse(
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      networkIdentifier: map['networkIdentifier'] == null ? null : SubResourceResponse.fromMap((map['networkIdentifier'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}

