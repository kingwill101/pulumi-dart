// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_logical_network_subnet.dart';

/// Input properties used for looking up and filtering HciLogicalNetwork resources.
class HciLogicalNetworkState {
  /// The ID of Custom Location where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;
  /// A list of IPv4 addresses of DNS servers available to VMs deployed in the Logical Networks. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? dnsServers;
  /// The Azure Region where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Azure Stack HCI Logical Network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `subnet` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HciLogicalNetworkSubnet>? subnet;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Logical Network.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual switch on the cluster used to associate with the Azure Stack HCI Logical Network. Possible switch names can be retrieved by following this [Azure guide](https://learn.microsoft.com/azure-stack/hci/manage/create-logical-networks?tabs=azurecli#prerequisites). Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualSwitchName;

  /// Creates a new [HciLogicalNetworkState].
  /// [customLocationId] The ID of Custom Location where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [dnsServers] A list of IPv4 addresses of DNS servers available to VMs deployed in the Logical Networks. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Logical Network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [subnet] A `subnet` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Logical Network.
  /// [virtualSwitchName] The name of the virtual switch on the cluster used to associate with the Azure Stack HCI Logical Network. Possible switch names can be retrieved by following this [Azure guide](https://learn.microsoft.com/azure-stack/hci/manage/create-logical-networks?tabs=azurecli#prerequisites). Changing this forces a new resource to be created.
  HciLogicalNetworkState({
    pulumi.Output<String>? customLocationId,
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<HciLogicalNetworkSubnet>? subnet,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualSwitchName,
  }) :
      customLocationId = pulumi.Input.asOptionalInput<String>(customLocationId),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subnet = pulumi.Input.asOptionalInput<HciLogicalNetworkSubnet>(subnet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualSwitchName = pulumi.Input.asOptionalInput<String>(virtualSwitchName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'dnsServers': ?dnsServers,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subnet': ?pulumi.Input.mapOptionalInputValue<HciLogicalNetworkSubnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'tags': ?tags,
      'virtualSwitchName': ?virtualSwitchName,
    };
  }

  factory HciLogicalNetworkState.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkState(
      customLocationId: map['customLocationId'] == null ? null : pulumi.Output.create<String>(map['customLocationId'] as String),
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<HciLogicalNetworkSubnet>(HciLogicalNetworkSubnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualSwitchName: map['virtualSwitchName'] == null ? null : pulumi.Output.create<String>(map['virtualSwitchName'] as String),
    );
  }
}

