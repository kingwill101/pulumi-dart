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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateDnsResolverId,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateDnsResolverId = pulumi.Input.asOptionalInput<String>(privateDnsResolverId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateDnsResolverId: map['privateDnsResolverId'] == null ? null : pulumi.Output.create<String>(map['privateDnsResolverId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

