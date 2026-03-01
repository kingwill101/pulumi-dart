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
    pulumi.Output<String>? customLocationId,
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<HciNetworkInterfaceIpConfiguration>? ipConfiguration,
    pulumi.Output<String>? location,
    pulumi.Output<String>? macAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customLocationId = pulumi.Input.asOptionalInput<String>(customLocationId),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      ipConfiguration = pulumi.Input.asOptionalInput<HciNetworkInterfaceIpConfiguration>(ipConfiguration),
      location = pulumi.Input.asOptionalInput<String>(location),
      macAddress = pulumi.Input.asOptionalInput<String>(macAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      customLocationId: map['customLocationId'] == null ? null : pulumi.Output.create<String>(map['customLocationId'] as String),
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      ipConfiguration: map['ipConfiguration'] == null ? null : pulumi.Output.create<HciNetworkInterfaceIpConfiguration>(HciNetworkInterfaceIpConfiguration.fromMap((map['ipConfiguration'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      macAddress: map['macAddress'] == null ? null : pulumi.Output.create<String>(map['macAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

