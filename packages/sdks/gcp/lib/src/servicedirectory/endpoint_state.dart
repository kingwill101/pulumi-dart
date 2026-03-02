// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// IPv4 or IPv6 address of the endpoint.
  final pulumi.Input<String>? address;
  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String>? endpointId;
  /// Metadata for the endpoint. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 512 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The resource name for the endpoint in the format
  /// `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  final pulumi.Input<String>? name;
  /// The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME.
  final pulumi.Input<String>? network;
  /// Port that the endpoint is running on, must be in the
  /// range of [0, 65535]. If unspecified, the default is 0.
  final pulumi.Input<int>? port;
  /// The resource name of the service that this endpoint provides.
  final pulumi.Input<String>? service;

  /// Creates a new [EndpointState].
  /// [address] IPv4 or IPv6 address of the endpoint.
  /// [endpointId] The Resource ID must be 1-63 characters long, including digits,
  /// [metadata] Metadata for the endpoint. This data can be consumed
  /// [name] The resource name for the endpoint in the format
  /// [network] The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME.
  /// [port] Port that the endpoint is running on, must be in the
  /// [service] The resource name of the service that this endpoint provides.
  EndpointState({
    this.address,
    this.endpointId,
    this.metadata,
    this.name,
    this.network,
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'endpointId': ?endpointId,
      'metadata': ?metadata,
      'name': ?name,
      'network': ?network,
      'port': ?port,
      'service': ?service,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      endpointId: map['endpointId'] == null ? null : (map['endpointId']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

