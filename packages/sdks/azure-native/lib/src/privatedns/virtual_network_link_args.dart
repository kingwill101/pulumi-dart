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
      'virtualNetwork':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(virtualNetwork, (value) => value.toMap()),
      'virtualNetworkLinkName': ?virtualNetworkLinkName,
    };
  }

  factory VirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkLinkArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateZoneName: pulumi.Input.fromValue(map['privateZoneName'] as String),
      registrationEnabled: (() {
        final guardedValue = map['registrationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resolutionPolicy: (() {
        final guardedValue = map['resolutionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualNetwork: (() {
        final guardedValue = map['virtualNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      virtualNetworkLinkName: (() {
        final guardedValue = map['virtualNetworkLinkName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
