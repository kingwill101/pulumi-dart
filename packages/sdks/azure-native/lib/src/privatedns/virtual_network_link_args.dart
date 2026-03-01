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
    pulumi.Output<String>? location,
    required pulumi.Output<String> privateZoneName,
    pulumi.Output<bool>? registrationEnabled,
    pulumi.Output<String>? resolutionPolicy,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SubResource>? virtualNetwork,
    pulumi.Output<String>? virtualNetworkLinkName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      privateZoneName = pulumi.Input.asInput<String>(privateZoneName),
      registrationEnabled = pulumi.Input.asOptionalInput<bool>(registrationEnabled),
      resolutionPolicy = pulumi.Input.asOptionalInput<String>(resolutionPolicy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetwork = pulumi.Input.asOptionalInput<SubResource>(virtualNetwork),
      virtualNetworkLinkName = pulumi.Input.asOptionalInput<String>(virtualNetworkLinkName);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateZoneName: pulumi.Output.create<String>(map['privateZoneName'] as String),
      registrationEnabled: map['registrationEnabled'] == null ? null : pulumi.Output.create<bool>(map['registrationEnabled'] as bool),
      resolutionPolicy: map['resolutionPolicy'] == null ? null : pulumi.Output.create<String>(map['resolutionPolicy'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetwork: map['virtualNetwork'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>())),
      virtualNetworkLinkName: map['virtualNetworkLinkName'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkLinkName'] as String),
    );
  }
}

