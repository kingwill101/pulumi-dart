// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverOutboundEndpoint resources.
class ResolverOutboundEndpointState {
  /// Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  final pulumi.Input<String>? privateDnsResolverId;
  /// The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverOutboundEndpointState].
  /// [location] Specifies the Azure Region where the Private DNS Resolver Outbound Endpoint should exist. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  /// [privateDnsResolverId] Specifies the ID of the Private DNS Resolver Outbound Endpoint. Changing this forces a new Private DNS Resolver Outbound Endpoint to be created.
  /// [subnetId] The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Private DNS Resolver Outbound Endpoint.
  ResolverOutboundEndpointState({
    this.location,
    this.name,
    this.privateDnsResolverId,
    this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'privateDnsResolverId': ?privateDnsResolverId,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory ResolverOutboundEndpointState.fromMap(Map<String, dynamic> map) {
    return ResolverOutboundEndpointState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateDnsResolverId: map['privateDnsResolverId'] == null ? null : (map['privateDnsResolverId']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

