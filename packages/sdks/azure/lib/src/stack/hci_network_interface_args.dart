// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_network_interface_ip_configuration.dart';

/// {@template pulumi_stack_hci_network_interface_hci_network_interface_args_doc}
/// The set of arguments for HciNetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_network_interface_hci_network_interface_args_doc}
class HciNetworkInterfaceArgs {
  /// The ID of the Custom Location where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// A list of IPv4 addresses of DNS servers available to VMs deployed in the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? dnsServers;
  /// An `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HciNetworkInterfaceIpConfiguration> ipConfiguration;
  /// The Azure Region where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The MAC address of the Network Interface. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If `mac_address` is not specified, it will be assigned by the server. If you experience a diff you may need to add this to `ignore_changes`.
  final pulumi.Input<String>? macAddress;
  /// The name which should be used for this Azure Stack HCI Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Network Interface.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HciNetworkInterfaceArgs].
  /// [customLocationId] The ID of the Custom Location where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  /// [dnsServers] A list of IPv4 addresses of DNS servers available to VMs deployed in the Network Interface. Changing this forces a new resource to be created.
  /// [ipConfiguration] An `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  /// [macAddress] The MAC address of the Network Interface. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Azure Stack HCI Network Interface. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Network Interface should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Azure Stack HCI Network Interface.
  const HciNetworkInterfaceArgs({
    required this.customLocationId,
    this.dnsServers,
    required this.ipConfiguration,
    this.location,
    this.macAddress,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'dnsServers': ?dnsServers,
      'ipConfiguration': pulumi.Input.mapInputValue<HciNetworkInterfaceIpConfiguration, Map<String, dynamic>>(ipConfiguration, (value) => value.toMap()),
      'location': ?location,
      'macAddress': ?macAddress,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory HciNetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return HciNetworkInterfaceArgs(
      customLocationId: pulumi.Input.fromValue(map['customLocationId'] as String),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipConfiguration: pulumi.Input.fromValue(HciNetworkInterfaceIpConfiguration.fromMap((map['ipConfiguration']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

