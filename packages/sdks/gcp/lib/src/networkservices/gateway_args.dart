// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_networkservices_gateway_gateway_args_doc}
class GatewayArgs {
  /// Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic.
  /// When no address is provided, an IP from the subnetwork is allocated.
  /// This field only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  final pulumi.Input<List<String>>? addresses;
  /// A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
  /// This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<List<String>>? certificateUrls;
  /// When deleting a gateway of type 'SECURE_WEB_GATEWAY', this boolean option will also delete auto generated router by the gateway creation.
  /// If there is no other gateway of type 'SECURE_WEB_GATEWAY' remaining for that region and network it will be deleted.
  final pulumi.Input<bool>? deleteSwgAutogenRouterOnDestroy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Determines if envoy will insert internal debug headers into upstream requests.
  /// Other Envoy headers may still be injected.
  /// By default, envoy will not insert any debug headers.
  /// Possible values are: `NONE`, `DEBUG_HEADERS`.
  final pulumi.Input<String>? envoyHeaders;
  /// A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
  /// For example: 'projects/*/locations/*/gatewaySecurityPolicies/swg-policy'.
  /// This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? gatewaySecurityPolicy;
  /// The IP Version that will be used by this gateway.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? ipVersion;
  /// Set of label tags associated with the Gateway resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the gateway.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// Name of the Gateway resource.
  final pulumi.Input<String>? name;
  /// The relative resource name identifying the VPC network that is using this configuration.
  /// For example: 'projects/*/global/networks/network-1'.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? network;
  /// One or more port numbers (1-65535), on which the Gateway will receive traffic.
  /// The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  final pulumi.Input<List<int>> ports;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The routing mode of the Gateway. This field is configurable only for gateways of type SECURE_WEB_GATEWAY. This field is required for gateways of type SECURE_WEB_GATEWAY.
  /// Possible values are: `NEXT_HOP_ROUTING_MODE`, `EXPLICIT_ROUTING_MODE`.
  final pulumi.Input<String>? routingMode;
  /// Immutable. Scope determines how configuration across multiple Gateway instances are merged.
  /// The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer.
  /// Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  final pulumi.Input<String>? scope;
  /// A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  final pulumi.Input<String>? serverTlsPolicy;
  /// The relative resource name identifying the subnetwork in which this SWG is allocated.
  /// For example: projects/*/regions/us-central1/subnetworks/network-1.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  final pulumi.Input<String>? subnetwork;
  /// Immutable. The type of the customer managed gateway.
  /// Possible values are: `OPEN_MESH`, `SECURE_WEB_GATEWAY`.
  final pulumi.Input<String> type;

  /// Creates a new [GatewayArgs].
  /// [addresses] Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic.
  /// [certificateUrls] A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
  /// [deleteSwgAutogenRouterOnDestroy] When deleting a gateway of type 'SECURE_WEB_GATEWAY', this boolean option will also delete auto generated router by the gateway creation.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [envoyHeaders] Determines if envoy will insert internal debug headers into upstream requests.
  /// [gatewaySecurityPolicy] A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
  /// [ipVersion] The IP Version that will be used by this gateway.
  /// [labels] Set of label tags associated with the Gateway resource.
  /// [location] The location of the gateway.
  /// [name] Name of the Gateway resource.
  /// [network] The relative resource name identifying the VPC network that is using this configuration.
  /// [ports] One or more port numbers (1-65535), on which the Gateway will receive traffic.
  /// [project] The ID of the project in which the resource belongs.
  /// [routingMode] The routing mode of the Gateway. This field is configurable only for gateways of type SECURE_WEB_GATEWAY. This field is required for gateways of type SECURE_WEB_GATEWAY.
  /// [scope] Immutable. Scope determines how configuration across multiple Gateway instances are merged.
  /// [serverTlsPolicy] A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  /// [subnetwork] The relative resource name identifying the subnetwork in which this SWG is allocated.
  /// [type] Immutable. The type of the customer managed gateway.
  GatewayArgs({
    this.addresses,
    this.certificateUrls,
    this.deleteSwgAutogenRouterOnDestroy,
    this.description,
    this.envoyHeaders,
    this.gatewaySecurityPolicy,
    this.ipVersion,
    this.labels,
    this.location,
    this.name,
    this.network,
    required this.ports,
    this.project,
    this.routingMode,
    this.scope,
    this.serverTlsPolicy,
    this.subnetwork,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'certificateUrls': ?certificateUrls,
      'deleteSwgAutogenRouterOnDestroy': ?deleteSwgAutogenRouterOnDestroy,
      'description': ?description,
      'envoyHeaders': ?envoyHeaders,
      'gatewaySecurityPolicy': ?gatewaySecurityPolicy,
      'ipVersion': ?ipVersion,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'ports': ports,
      'project': ?project,
      'routingMode': ?routingMode,
      'scope': ?scope,
      'serverTlsPolicy': ?serverTlsPolicy,
      'subnetwork': ?subnetwork,
      'type': type,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      addresses: map['addresses'] == null ? null : ((map['addresses'] as List).cast<String>()).input(),
      certificateUrls: map['certificateUrls'] == null ? null : ((map['certificateUrls'] as List).cast<String>()).input(),
      deleteSwgAutogenRouterOnDestroy: map['deleteSwgAutogenRouterOnDestroy'] == null ? null : (map['deleteSwgAutogenRouterOnDestroy'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      envoyHeaders: map['envoyHeaders'] == null ? null : (map['envoyHeaders'] as String).input(),
      gatewaySecurityPolicy: map['gatewaySecurityPolicy'] == null ? null : (map['gatewaySecurityPolicy'] as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      ports: ((map['ports'] as List).cast<int>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      routingMode: map['routingMode'] == null ? null : (map['routingMode'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      serverTlsPolicy: map['serverTlsPolicy'] == null ? null : (map['serverTlsPolicy'] as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

