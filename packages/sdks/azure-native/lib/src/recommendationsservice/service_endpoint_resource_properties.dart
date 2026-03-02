// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceEndpoint resource properties.
class ServiceEndpointResourceProperties {
  /// ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  final pulumi.Input<int>? preAllocatedCapacity;

  /// Creates a new [ServiceEndpointResourceProperties].
  /// [preAllocatedCapacity] ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  ServiceEndpointResourceProperties({
    this.preAllocatedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preAllocatedCapacity': ?preAllocatedCapacity,
    };
  }

  factory ServiceEndpointResourceProperties.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointResourceProperties(
      preAllocatedCapacity: map['preAllocatedCapacity'] == null ? null : (map['preAllocatedCapacity'] as int).input(),
    );
  }
}

