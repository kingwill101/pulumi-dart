// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_logical_network_subnet.dart';

/// {@template pulumi_stack_hci_logical_network_hci_logical_network_args_doc}
/// The set of arguments for HciLogicalNetwork.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_logical_network_hci_logical_network_args_doc}
class HciLogicalNetworkArgs {
  /// The ID of Custom Location where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// A list of IPv4 addresses of DNS servers available to VMs deployed in the Logical Networks. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? dnsServers;
  /// The Azure Region where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Logical Network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `subnet` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HciLogicalNetworkSubnet> subnet;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Logical Network.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual switch on the cluster used to associate with the Azure Stack HCI Logical Network. Possible switch names can be retrieved by following this [Azure guide](https://learn.microsoft.com/azure-stack/hci/manage/create-logical-networks?tabs=azurecli#prerequisites). Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualSwitchName;

  /// Creates a new [HciLogicalNetworkArgs].
  /// [customLocationId] The ID of Custom Location where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [dnsServers] A list of IPv4 addresses of DNS servers available to VMs deployed in the Logical Networks. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Logical Network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [subnet] A `subnet` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Logical Network.
  /// [virtualSwitchName] The name of the virtual switch on the cluster used to associate with the Azure Stack HCI Logical Network. Possible switch names can be retrieved by following this [Azure guide](https://learn.microsoft.com/azure-stack/hci/manage/create-logical-networks?tabs=azurecli#prerequisites). Changing this forces a new resource to be created.
  HciLogicalNetworkArgs({
    required this.customLocationId,
    this.dnsServers,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.subnet,
    this.tags,
    required this.virtualSwitchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'dnsServers': ?dnsServers,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subnet': pulumi.Input.mapInputValue<HciLogicalNetworkSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
      'virtualSwitchName': virtualSwitchName,
    };
  }

  factory HciLogicalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkArgs(
      customLocationId: (map['customLocationId'] as String).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnet: (HciLogicalNetworkSubnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualSwitchName: (map['virtualSwitchName'] as String).input(),
    );
  }
}

