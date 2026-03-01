// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_network_virtual_router_args_doc}
/// The set of arguments for VirtualRouter.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_router_args_doc}
class VirtualRouterArgs {
  /// The Gateway on which VirtualRouter is hosted.
  final pulumi.Input<SubResource>? hostedGateway;
  /// The Subnet on which VirtualRouter is hosted.
  final pulumi.Input<SubResource>? hostedSubnet;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// VirtualRouter ASN.
  final pulumi.Input<double>? virtualRouterAsn;
  /// VirtualRouter IPs.
  final pulumi.Input<List<String>>? virtualRouterIps;
  /// The name of the Virtual Router.
  final pulumi.Input<String>? virtualRouterName;

  /// Creates a new [VirtualRouterArgs].
  /// [hostedGateway] The Gateway on which VirtualRouter is hosted.
  /// [hostedSubnet] The Subnet on which VirtualRouter is hosted.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  /// [virtualRouterAsn] VirtualRouter ASN.
  /// [virtualRouterIps] VirtualRouter IPs.
  /// [virtualRouterName] The name of the Virtual Router.
  VirtualRouterArgs({
    pulumi.Output<SubResource>? hostedGateway,
    pulumi.Output<SubResource>? hostedSubnet,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<double>? virtualRouterAsn,
    pulumi.Output<List<String>>? virtualRouterIps,
    pulumi.Output<String>? virtualRouterName,
  }) :
      hostedGateway = pulumi.Input.asOptionalInput<SubResource>(hostedGateway),
      hostedSubnet = pulumi.Input.asOptionalInput<SubResource>(hostedSubnet),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualRouterAsn = pulumi.Input.asOptionalInput<double>(virtualRouterAsn),
      virtualRouterIps = pulumi.Input.asOptionalInput<List<String>>(virtualRouterIps),
      virtualRouterName = pulumi.Input.asOptionalInput<String>(virtualRouterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostedGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(hostedGateway, (value) => value.toMap()),
      'hostedSubnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(hostedSubnet, (value) => value.toMap()),
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualRouterAsn': ?virtualRouterAsn,
      'virtualRouterIps': ?virtualRouterIps,
      'virtualRouterName': ?virtualRouterName,
    };
  }

  factory VirtualRouterArgs.fromMap(Map<String, dynamic> map) {
    return VirtualRouterArgs(
      hostedGateway: map['hostedGateway'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['hostedGateway'] as Map).cast<String, dynamic>())),
      hostedSubnet: map['hostedSubnet'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['hostedSubnet'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualRouterAsn: map['virtualRouterAsn'] == null ? null : pulumi.Output.create<double>(map['virtualRouterAsn'] as double),
      virtualRouterIps: map['virtualRouterIps'] == null ? null : pulumi.Output.create<List<String>>((map['virtualRouterIps'] as List).cast<String>()),
      virtualRouterName: map['virtualRouterName'] == null ? null : pulumi.Output.create<String>(map['virtualRouterName'] as String),
    );
  }
}

