// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_networkcloud_l3_network_args_doc}
/// The set of arguments for L3Network.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_l3_network_args_doc}
class L3NetworkArgs {
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The indicator of whether or not to disable IPAM allocation on the network attachment definition injected into the Hybrid AKS Cluster.
  final pulumi.Input<String>? hybridAksIpamEnabled;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  final pulumi.Input<String>? hybridAksPluginType;
  /// The default interface name for this L3 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  final pulumi.Input<String>? interfaceName;
  /// The type of the IP address allocation, defaulted to "DualStack".
  final pulumi.Input<String>? ipAllocationType;
  /// The IPV4 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// is IPV4 or DualStack.
  final pulumi.Input<String>? ipv4ConnectedPrefix;
  /// The IPV6 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// is IPV6 or DualStack.
  final pulumi.Input<String>? ipv6ConnectedPrefix;
  /// The resource ID of the Network Fabric l3IsolationDomain.
  final pulumi.Input<String> l3IsolationDomainId;
  /// The name of the L3 network.
  final pulumi.Input<String>? l3NetworkName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VLAN from the l3IsolationDomain that is used for this network.
  final pulumi.Input<double> vlan;

  /// Creates a new [L3NetworkArgs].
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hybridAksIpamEnabled] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The indicator of whether or not to disable IPAM allocation on the network attachment definition injected into the Hybrid AKS Cluster.
  /// [hybridAksPluginType] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  /// [interfaceName] The default interface name for this L3 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  /// [ipAllocationType] The type of the IP address allocation, defaulted to "DualStack".
  /// [ipv4ConnectedPrefix] The IPV4 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// [ipv6ConnectedPrefix] The IPV6 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// [l3IsolationDomainId] The resource ID of the Network Fabric l3IsolationDomain.
  /// [l3NetworkName] The name of the L3 network.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [vlan] The VLAN from the l3IsolationDomain that is used for this network.
  L3NetworkArgs({
    required this.extendedLocation,
    this.hybridAksIpamEnabled,
    this.hybridAksPluginType,
    this.interfaceName,
    this.ipAllocationType,
    this.ipv4ConnectedPrefix,
    this.ipv6ConnectedPrefix,
    required this.l3IsolationDomainId,
    this.l3NetworkName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hybridAksIpamEnabled': ?hybridAksIpamEnabled,
      'hybridAksPluginType': ?hybridAksPluginType,
      'interfaceName': ?interfaceName,
      'ipAllocationType': ?ipAllocationType,
      'ipv4ConnectedPrefix': ?ipv4ConnectedPrefix,
      'ipv6ConnectedPrefix': ?ipv6ConnectedPrefix,
      'l3IsolationDomainId': l3IsolationDomainId,
      'l3NetworkName': ?l3NetworkName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vlan': vlan,
    };
  }

  factory L3NetworkArgs.fromMap(Map<String, dynamic> map) {
    return L3NetworkArgs(
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      hybridAksIpamEnabled: map['hybridAksIpamEnabled'] == null ? null : (map['hybridAksIpamEnabled'] as String).input(),
      hybridAksPluginType: map['hybridAksPluginType'] == null ? null : (map['hybridAksPluginType'] as String).input(),
      interfaceName: map['interfaceName'] == null ? null : (map['interfaceName'] as String).input(),
      ipAllocationType: map['ipAllocationType'] == null ? null : (map['ipAllocationType'] as String).input(),
      ipv4ConnectedPrefix: map['ipv4ConnectedPrefix'] == null ? null : (map['ipv4ConnectedPrefix'] as String).input(),
      ipv6ConnectedPrefix: map['ipv6ConnectedPrefix'] == null ? null : (map['ipv6ConnectedPrefix'] as String).input(),
      l3IsolationDomainId: (map['l3IsolationDomainId'] as String).input(),
      l3NetworkName: map['l3NetworkName'] == null ? null : (map['l3NetworkName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vlan: (map['vlan'] as double).input(),
    );
  }
}

