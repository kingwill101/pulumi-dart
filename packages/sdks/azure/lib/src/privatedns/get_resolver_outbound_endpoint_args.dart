// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_resolver_outbound_endpoint_get_resolver_outbound_endpoint_args_doc}
/// Arguments for getResolverOutboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_resolver_outbound_endpoint_get_resolver_outbound_endpoint_args_doc}
class GetResolverOutboundEndpointArgs {
  /// Name of the Private DNS Resolver Outbound Endpoint.
  final pulumi.Input<String> name;
  /// ID of the Private DNS Resolver Outbound Endpoint.
  final pulumi.Input<String> privateDnsResolverId;

  /// Creates a new [GetResolverOutboundEndpointArgs].
  /// [name] Name of the Private DNS Resolver Outbound Endpoint.
  /// [privateDnsResolverId] ID of the Private DNS Resolver Outbound Endpoint.
  GetResolverOutboundEndpointArgs({
    required this.name,
    required this.privateDnsResolverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateDnsResolverId': privateDnsResolverId,
    };
  }

  factory GetResolverOutboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverOutboundEndpointArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateDnsResolverId: pulumi.Input.fromValue(map['privateDnsResolverId'] as String),
    );
  }
}

