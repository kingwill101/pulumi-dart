// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_networkcloud_l2_network_args_doc}
/// The set of arguments for L2Network.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_l2_network_args_doc}
class L2NetworkArgs {
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  final pulumi.Input<String>? hybridAksPluginType;
  /// The default interface name for this L2 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  final pulumi.Input<String>? interfaceName;
  /// The resource ID of the Network Fabric l2IsolationDomain.
  final pulumi.Input<String> l2IsolationDomainId;
  /// The name of the L2 network.
  final pulumi.Input<String>? l2NetworkName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [L2NetworkArgs].
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hybridAksPluginType] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  /// [interfaceName] The default interface name for this L2 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  /// [l2IsolationDomainId] The resource ID of the Network Fabric l2IsolationDomain.
  /// [l2NetworkName] The name of the L2 network.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  L2NetworkArgs({
    required this.extendedLocation,
    this.hybridAksPluginType,
    this.interfaceName,
    required this.l2IsolationDomainId,
    this.l2NetworkName,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hybridAksPluginType': ?hybridAksPluginType,
      'interfaceName': ?interfaceName,
      'l2IsolationDomainId': l2IsolationDomainId,
      'l2NetworkName': ?l2NetworkName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory L2NetworkArgs.fromMap(Map<String, dynamic> map) {
    return L2NetworkArgs(
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      hybridAksPluginType: map['hybridAksPluginType'] == null ? null : (map['hybridAksPluginType'] as String).input(),
      interfaceName: map['interfaceName'] == null ? null : (map['interfaceName'] as String).input(),
      l2IsolationDomainId: (map['l2IsolationDomainId'] as String).input(),
      l2NetworkName: map['l2NetworkName'] == null ? null : (map['l2NetworkName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

