// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_inbound_endpoint_ip_configurations.dart';

/// {@template pulumi_privatedns_resolver_inbound_endpoint_resolver_inbound_endpoint_args_doc}
/// The set of arguments for ResolverInboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_privatedns_resolver_inbound_endpoint_resolver_inbound_endpoint_args_doc}
class ResolverInboundEndpointArgs {
  /// One `ip_configurations` block as defined below. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  final pulumi.Input<ResolverInboundEndpointIpConfigurations> ipConfigurations;
  /// Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  final pulumi.Input<String> privateDnsResolverId;
  /// A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverInboundEndpointArgs].
  /// [ipConfigurations] One `ip_configurations` block as defined below. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  /// [location] Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  /// [privateDnsResolverId] Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  /// [tags] A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint.
  ResolverInboundEndpointArgs({
    required this.ipConfigurations,
    this.location,
    this.name,
    required this.privateDnsResolverId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': pulumi.Input.mapInputValue<ResolverInboundEndpointIpConfigurations, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'privateDnsResolverId': privateDnsResolverId,
      'tags': ?tags,
    };
  }

  factory ResolverInboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ResolverInboundEndpointArgs(
      ipConfigurations: (ResolverInboundEndpointIpConfigurations.fromMap((map['ipConfigurations'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateDnsResolverId: (map['privateDnsResolverId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

