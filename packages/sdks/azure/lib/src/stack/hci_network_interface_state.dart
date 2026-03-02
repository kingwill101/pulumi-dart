// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_network_interface_ip_configuration.dart';

/// Input properties used for looking up and filtering HciNetworkInterface resources.
class HciNetworkInterfaceState {
  /// The ID of the Custom Location where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;
  /// A list of IPv4 addresses of DNS servers available to VMs deployed in the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? dnsServers;
  /// An `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HciNetworkInterfaceIpConfiguration>? ipConfiguration;
  /// The Azure Region where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The MAC address of the Network Interface. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If `mac_address` is not specified, it will be assigned by the server. If you experience a diff you may need to add this to `ignore_changes`.
  final pulumi.Input<String>? macAddress;
  /// The name which should be used for this Azure Stack HCI Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Network Interface.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HciNetworkInterfaceState].
  /// [customLocationId] The ID of the Custom Location where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  /// [dnsServers] A list of IPv4 addresses of DNS servers available to VMs deployed in the Network Interface. Changing this forces a new resource to be created.
  /// [ipConfiguration] An `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  /// [macAddress] The MAC address of the Network Interface. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Network Interface. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Network Interface.
  HciNetworkInterfaceState({
    this.customLocationId,
    this.dnsServers,
    this.ipConfiguration,
    this.location,
    this.macAddress,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'dnsServers': ?dnsServers,
      'ipConfiguration': ?pulumi.Input.mapOptionalInputValue<HciNetworkInterfaceIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'location': ?location,
      'macAddress': ?macAddress,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory HciNetworkInterfaceState.fromMap(Map<String, dynamic> map) {
    return HciNetworkInterfaceState(
      customLocationId: map['customLocationId'] == null ? null : (map['customLocationId']! as String).input(),
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers']! as List).cast<String>()).input(),
      ipConfiguration: map['ipConfiguration'] == null ? null : (HciNetworkInterfaceIpConfiguration.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

