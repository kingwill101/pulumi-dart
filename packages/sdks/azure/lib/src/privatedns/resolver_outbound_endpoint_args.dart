// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_resolver_outbound_endpoint_resolver_outbound_endpoint_args_doc}
/// The set of arguments for ResolverOutboundEndpoint.
/// {@endtemplate}
/// {@macro pulumi_privatedns_resolver_outbound_endpoint_resolver_outbound_endpoint_args_doc}
class ResolverOutboundEndpointArgs {
  /// Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  final pulumi.Input<String> privateDnsResolverId;
  /// The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ResolverOutboundEndpointArgs].
  /// [location] Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  /// [privateDnsResolverId] Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  /// [subnetId] The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint.
  const ResolverOutboundEndpointArgs({
    this.location,
    this.name,
    required this.privateDnsResolverId,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'privateDnsResolverId': privateDnsResolverId,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory ResolverOutboundEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ResolverOutboundEndpointArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsResolverId: pulumi.Input.fromValue(map['privateDnsResolverId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
