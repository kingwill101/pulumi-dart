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
    pulumi.Output<String>? address,
    pulumi.Output<String>? endpointId,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<int>? port,
    pulumi.Output<String>? service,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      port = pulumi.Input.asOptionalInput<int>(port),
      service = pulumi.Input.asOptionalInput<String>(service);

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
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

