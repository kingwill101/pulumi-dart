// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The service endpoint properties.
class ServiceEndpoint {
  /// A list of locations.
  final pulumi.Input<List<String>>? locations;
  /// The type of the endpoint service.
  final pulumi.Input<String> service;

  /// Creates a new [ServiceEndpoint].
  /// [locations] A list of locations.
  /// [service] The type of the endpoint service.
  const ServiceEndpoint({
    this.locations,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'service': service,
    };
  }

  factory ServiceEndpoint.fromMap(Map<String, dynamic> map) {
    return ServiceEndpoint(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
