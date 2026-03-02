// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_privatedns_virtual_network_link_args_doc}
/// The set of arguments for VirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_privatedns_virtual_network_link_args_doc}
class VirtualNetworkLinkArgs {
  /// The Azure Region where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Private DNS zone (without a terminating dot).
  final pulumi.Input<String> privateZoneName;
  /// Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?
  final pulumi.Input<bool>? registrationEnabled;
  /// The resolution policy on the virtual network link. Only applicable for virtual network links to privatelink zones, and for A,AAAA,CNAME queries. When set to 'NxDomainRedirect', Azure DNS resolver falls back to public resolution if private dns query resolution results in non-existent domain response.
  final pulumi.Input<String>? resolutionPolicy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The reference of the virtual network.
  final pulumi.Input<SubResource>? virtualNetwork;
  /// The name of the virtual network link.
  final pulumi.Input<String>? virtualNetworkLinkName;

  /// Creates a new [VirtualNetworkLinkArgs].
  /// [location] The Azure Region where the resource lives
  /// [privateZoneName] The name of the Private DNS zone (without a terminating dot).
  /// [registrationEnabled] Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?
  /// [resolutionPolicy] The resolution policy on the virtual network link. Only applicable for virtual network links to privatelink zones, and for A,AAAA,CNAME queries. When set to 'NxDomainRedirect', Azure DNS resolver falls back to public resolution if private dns query resolution results in non-existent domain response.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualNetwork] The reference of the virtual network.
  /// [virtualNetworkLinkName] The name of the virtual network link.
  VirtualNetworkLinkArgs({
    this.location,
    required this.privateZoneName,
    this.registrationEnabled,
    this.resolutionPolicy,
    required this.resourceGroupName,
    this.tags,
    this.virtualNetwork,
    this.virtualNetworkLinkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'privateZoneName': privateZoneName,
      'registrationEnabled': ?registrationEnabled,
      'resolutionPolicy': ?resolutionPolicy,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
      'virtualNetworkLinkName': ?virtualNetworkLinkName,
    };
  }

  factory VirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkLinkArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      privateZoneName: (map['privateZoneName'] as String).input(),
      registrationEnabled: map['registrationEnabled'] == null ? null : (map['registrationEnabled']! as bool).input(),
      resolutionPolicy: map['resolutionPolicy'] == null ? null : (map['resolutionPolicy']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetwork: map['virtualNetwork'] == null ? null : (SubResource.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>())).input(),
      virtualNetworkLinkName: map['virtualNetworkLinkName'] == null ? null : (map['virtualNetworkLinkName']! as String).input(),
    );
  }
}

