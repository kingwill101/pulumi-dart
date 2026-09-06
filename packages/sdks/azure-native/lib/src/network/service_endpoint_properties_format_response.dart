// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// The service endpoint properties.
class ServiceEndpointPropertiesFormatResponse {
  /// A list of locations.
  final pulumi.Input<List<String>?>? locations;
  /// SubResource as network identifier.
  final pulumi.Input<SubResourceResponse?>? networkIdentifier;
  /// The provisioning state of the service endpoint resource.
  final pulumi.Input<String> provisioningState;
  /// The type of the endpoint service.
  final pulumi.Input<String?>? service;

  /// Creates a new [ServiceEndpointPropertiesFormatResponse].
  /// [locations] A list of locations.
  /// [networkIdentifier] SubResource as network identifier.
  /// [provisioningState] The provisioning state of the service endpoint resource.
  /// [service] The type of the endpoint service.
  const ServiceEndpointPropertiesFormatResponse({
    this.locations,
    this.networkIdentifier,
    required this.provisioningState,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'networkIdentifier': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(networkIdentifier, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'service': ?service,
    };
  }

  factory ServiceEndpointPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointPropertiesFormatResponse(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkIdentifier: (() { final guardedValue = map['networkIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
