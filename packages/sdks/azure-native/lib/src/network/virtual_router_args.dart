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
    this.hostedGateway,
    this.hostedSubnet,
    this.id,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.virtualRouterAsn,
    this.virtualRouterIps,
    this.virtualRouterName,
  });

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
      hostedGateway: map['hostedGateway'] == null ? null : (SubResource.fromMap((map['hostedGateway'] as Map).cast<String, dynamic>())).input(),
      hostedSubnet: map['hostedSubnet'] == null ? null : (SubResource.fromMap((map['hostedSubnet'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualRouterAsn: map['virtualRouterAsn'] == null ? null : (map['virtualRouterAsn'] as double).input(),
      virtualRouterIps: map['virtualRouterIps'] == null ? null : ((map['virtualRouterIps'] as List).cast<String>()).input(),
      virtualRouterName: map['virtualRouterName'] == null ? null : (map['virtualRouterName'] as String).input(),
    );
  }
}

