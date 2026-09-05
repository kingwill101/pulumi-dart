// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_inbound_endpoint_ip_configuration.dart';

/// Result data returned by getResolverInboundEndpoint.
class GetResolverInboundEndpointResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of `ipConfigurations` block as defined below.
  final List<GetResolverInboundEndpointIpConfiguration>? ipConfigurations;
  /// The Azure Region where the Private DNS Resolver Inbound Endpoint exists.
  final String? location;
  final String? name;
  final String? privateDnsResolverId;
  /// The tags assigned to the Private DNS Resolver Inbound Endpoint.
  final Map<String, String>? tags;

  /// Creates a new [GetResolverInboundEndpointResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] A list of `ipConfigurations` block as defined below.
  /// [location] The Azure Region where the Private DNS Resolver Inbound Endpoint exists.
  /// [name] Optional.
  /// [privateDnsResolverId] Optional.
  /// [tags] The tags assigned to the Private DNS Resolver Inbound Endpoint.
  const GetResolverInboundEndpointResult({
    this.id,
    this.ipConfigurations,
    this.location,
    this.name,
    this.privateDnsResolverId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResolverInboundEndpointIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'privateDnsResolverId': ?privateDnsResolverId,
      'tags': ?tags,
    };
  }

  factory GetResolverInboundEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetResolverInboundEndpointResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResolverInboundEndpointIpConfiguration>(guardedValue, (value) => GetResolverInboundEndpointIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsResolverId: (() { final guardedValue = map['privateDnsResolverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
