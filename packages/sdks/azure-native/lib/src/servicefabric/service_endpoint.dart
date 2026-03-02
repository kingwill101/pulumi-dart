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
  ServiceEndpoint({
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
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      service: (map['service'] as String).input(),
    );
  }
}

