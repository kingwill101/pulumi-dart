// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceEndpoint resource properties.
class ServiceEndpointResourceProperties {
  /// ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  final pulumi.Input<int?>? preAllocatedCapacity;

  /// Creates a new [ServiceEndpointResourceProperties].
  /// [preAllocatedCapacity] ServiceEndpoint pre-allocated capacity controls the maximum requests-per-second allowed for that endpoint. Only applicable when Account configuration is Capacity.
  const ServiceEndpointResourceProperties({
    this.preAllocatedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preAllocatedCapacity': ?preAllocatedCapacity,
    };
  }

  factory ServiceEndpointResourceProperties.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointResourceProperties(
      preAllocatedCapacity: (() { final guardedValue = map['preAllocatedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
