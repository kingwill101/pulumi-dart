// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The service endpoint properties.
class ServiceEndpointPropertiesFormatInterfaceEndpointResponse {
  /// A list of locations.
  final pulumi.Input<List<String>>? locations;
  /// The provisioning state of the resource.
  final pulumi.Input<String>? provisioningState;
  /// The type of the endpoint service.
  final pulumi.Input<String>? service;

  /// Creates a new [ServiceEndpointPropertiesFormatInterfaceEndpointResponse].
  /// [locations] A list of locations.
  /// [provisioningState] The provisioning state of the resource.
  /// [service] The type of the endpoint service.
  const ServiceEndpointPropertiesFormatInterfaceEndpointResponse({
    this.locations,
    this.provisioningState,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'provisioningState': ?provisioningState,
      'service': ?service,
    };
  }

  factory ServiceEndpointPropertiesFormatInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPropertiesFormatInterfaceEndpointResponse(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
