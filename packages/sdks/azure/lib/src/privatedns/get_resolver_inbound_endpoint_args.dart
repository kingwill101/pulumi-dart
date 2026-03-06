// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_resolver_inbound_endpoint_get_resolver_inbound_endpoint_args_doc}
/// Arguments for getResolverInboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_resolver_inbound_endpoint_get_resolver_inbound_endpoint_args_doc}
class GetResolverInboundEndpointArgs {
  /// Name of the Private DNS Resolver Inbound Endpoint.
  final pulumi.Input<String> name;
  /// ID of the Private DNS Resolver.
  final pulumi.Input<String> privateDnsResolverId;

  /// Creates a new [GetResolverInboundEndpointArgs].
  /// [name] Name of the Private DNS Resolver Inbound Endpoint.
  /// [privateDnsResolverId] ID of the Private DNS Resolver.
  const GetResolverInboundEndpointArgs({
    required this.name,
    required this.privateDnsResolverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateDnsResolverId': privateDnsResolverId,
    };
  }

  factory GetResolverInboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverInboundEndpointArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateDnsResolverId: pulumi.Input.fromValue(map['privateDnsResolverId'] as String),
    );
  }
}

