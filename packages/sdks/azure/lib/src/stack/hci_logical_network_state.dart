// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_logical_network_subnet.dart';

/// Input properties used for looking up and filtering HciLogicalNetwork resources.
class HciLogicalNetworkState {
  /// The ID of Custom Location where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? customLocationId;
  /// A list of IPv4 addresses of DNS servers available to VMs deployed in the Logical Networks. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? dnsServers;
  /// The Azure Region where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Azure Stack HCI Logical Network. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `subnet` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HciLogicalNetworkSubnet?>? subnet;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Logical Network.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the virtual switch on the cluster used to associate with the Azure Stack HCI Logical Network. Possible switch names can be retrieved by following this [Azure guide](https://learn.microsoft.com/azure-stack/hci/manage/create-logical-networks?tabs=azurecli#prerequisites). Changing this forces a new resource to be created.
  final pulumi.Input<String?>? virtualSwitchName;

  /// Creates a new [HciLogicalNetworkState].
  /// [customLocationId] The ID of Custom Location where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [dnsServers] A list of IPv4 addresses of DNS servers available to VMs deployed in the Logical Networks. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Logical Network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Logical Network should exist. Changing this forces a new resource to be created.
  /// [subnet] A `subnet` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Logical Network.
  /// [virtualSwitchName] The name of the virtual switch on the cluster used to associate with the Azure Stack HCI Logical Network. Possible switch names can be retrieved by following this [Azure guide](https://learn.microsoft.com/azure-stack/hci/manage/create-logical-networks?tabs=azurecli#prerequisites). Changing this forces a new resource to be created.
  const HciLogicalNetworkState({
    this.customLocationId,
    this.dnsServers,
    this.location,
    this.name,
    this.resourceGroupName,
    this.subnet,
    this.tags,
    this.virtualSwitchName,
  });

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
      customLocationId: (() { final guardedValue = map['customLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HciLogicalNetworkSubnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualSwitchName: (() { final guardedValue = map['virtualSwitchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
