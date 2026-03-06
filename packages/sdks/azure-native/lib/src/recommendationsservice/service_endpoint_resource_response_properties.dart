// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceEndpoint resource properties.
class ServiceEndpointResourceResponseProperties {
  /// The paired location that will be used by this ServiceEndpoint.
  final pulumi.Input<String> pairedLocation;
  /// ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  final pulumi.Input<int>? preAllocatedCapacity;
  /// The resource provisioning state.
  final pulumi.Input<String> provisioningState;
  /// The URL where the ServiceEndpoint API is accessible at.
  final pulumi.Input<String> url;

  /// Creates a new [ServiceEndpointResourceResponseProperties].
  /// [pairedLocation] The paired location that will be used by this ServiceEndpoint.
  /// [preAllocatedCapacity] ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  /// [provisioningState] The resource provisioning state.
  /// [url] The URL where the ServiceEndpoint API is accessible at.
  const ServiceEndpointResourceResponseProperties({
    required this.pairedLocation,
    this.preAllocatedCapacity,
    required this.provisioningState,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pairedLocation': pairedLocation,
      'preAllocatedCapacity': ?preAllocatedCapacity,
      'provisioningState': provisioningState,
      'url': url,
    };
  }

  factory ServiceEndpointResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointResourceResponseProperties(
      pairedLocation: pulumi.Input.fromValue(map['pairedLocation'] as String),
      preAllocatedCapacity: (() { final guardedValue = map['preAllocatedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

