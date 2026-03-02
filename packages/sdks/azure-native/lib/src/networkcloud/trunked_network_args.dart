// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_networkcloud_trunked_network_args_doc}
/// The set of arguments for TrunkedNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_trunked_network_args_doc}
class TrunkedNetworkArgs {
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  final pulumi.Input<String>? hybridAksPluginType;
  /// The default interface name for this trunked network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  final pulumi.Input<String>? interfaceName;
  /// The list of resource IDs representing the Network Fabric isolation domains. It can be any combination of l2IsolationDomain and l3IsolationDomain resources.
  final pulumi.Input<List<String>> isolationDomainIds;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the trunked network.
  final pulumi.Input<String>? trunkedNetworkName;
  /// The list of vlans that are selected from the isolation domains for trunking.
  final pulumi.Input<List<double>> vlans;

  /// Creates a new [TrunkedNetworkArgs].
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hybridAksPluginType] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  /// [interfaceName] The default interface name for this trunked network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  /// [isolationDomainIds] The list of resource IDs representing the Network Fabric isolation domains. It can be any combination of l2IsolationDomain and l3IsolationDomain resources.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [trunkedNetworkName] The name of the trunked network.
  /// [vlans] The list of vlans that are selected from the isolation domains for trunking.
  TrunkedNetworkArgs({
    required this.extendedLocation,
    this.hybridAksPluginType,
    this.interfaceName,
    required this.isolationDomainIds,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.trunkedNetworkName,
    required this.vlans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hybridAksPluginType': ?hybridAksPluginType,
      'interfaceName': ?interfaceName,
      'isolationDomainIds': isolationDomainIds,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'trunkedNetworkName': ?trunkedNetworkName,
      'vlans': vlans,
    };
  }

  factory TrunkedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return TrunkedNetworkArgs(
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      hybridAksPluginType: map['hybridAksPluginType'] == null ? null : (map['hybridAksPluginType']! as String).input(),
      interfaceName: map['interfaceName'] == null ? null : (map['interfaceName']! as String).input(),
      isolationDomainIds: ((map['isolationDomainIds'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trunkedNetworkName: map['trunkedNetworkName'] == null ? null : (map['trunkedNetworkName']! as String).input(),
      vlans: ((map['vlans'] as List).cast<double>()).input(),
    );
  }
}

