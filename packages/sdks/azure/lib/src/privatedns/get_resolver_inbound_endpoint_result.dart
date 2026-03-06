// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_inbound_endpoint_ip_configuration.dart';

/// Result data returned by getResolverInboundEndpoint.
class GetResolverInboundEndpointResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of `ip_configurations` block as defined below.
  final List<GetResolverInboundEndpointIpConfiguration> ipConfigurations;
  /// The Azure Region where the Private DNS Resolver Inbound Endpoint exists.
  final String location;
  final String name;
  final String privateDnsResolverId;
  /// The tags assigned to the Private DNS Resolver Inbound Endpoint.
  final Map<String, String> tags;

  /// Creates a new [GetResolverInboundEndpointResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] A list of `ip_configurations` block as defined below.
  /// [location] The Azure Region where the Private DNS Resolver Inbound Endpoint exists.
  /// [name] Required.
  /// [privateDnsResolverId] Required.
  /// [tags] The tags assigned to the Private DNS Resolver Inbound Endpoint.
  const GetResolverInboundEndpointResult({
    required this.id,
    required this.ipConfigurations,
    required this.location,
    required this.name,
    required this.privateDnsResolverId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ipConfigurations': pulumi.Input.encodeList<GetResolverInboundEndpointIpConfiguration, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'location': location,
      'name': name,
      'privateDnsResolverId': privateDnsResolverId,
      'tags': tags,
    };
  }

  factory GetResolverInboundEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetResolverInboundEndpointResult(
      id: map['id'] as String,
      ipConfigurations: pulumi.Input.decodeList<GetResolverInboundEndpointIpConfiguration>(map['ipConfigurations']!, (value) => GetResolverInboundEndpointIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      privateDnsResolverId: map['privateDnsResolverId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

