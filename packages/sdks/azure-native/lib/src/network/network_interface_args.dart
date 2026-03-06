// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'network_interface_dns_settings.dart';
import 'network_interface_ipconfiguration.dart';
import 'network_security_group_network.dart';
import 'private_link_service_network.dart';

/// {@template pulumi_network_network_interface_args_doc}
/// The set of arguments for NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_args_doc}
class NetworkInterfaceArgs {
  /// Auxiliary mode of Network Interface resource.
  final pulumi.Input<String>? auxiliaryMode;
  /// Auxiliary sku of Network Interface resource.
  final pulumi.Input<String>? auxiliarySku;
  /// Indicates whether to disable tcp state tracking.
  final pulumi.Input<bool>? disableTcpStateTracking;
  /// The DNS settings in network interface.
  final pulumi.Input<NetworkInterfaceDnsSettings>? dnsSettings;
  /// If the network interface is configured for accelerated networking. Not applicable to VM sizes which require accelerated networking.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// Indicates whether IP forwarding is enabled on this network interface.
  final pulumi.Input<bool>? enableIPForwarding;
  /// The extended location of the network interface.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// A list of IPConfigurations of the network interface.
  final pulumi.Input<List<NetworkInterfaceIPConfiguration>>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Migration phase of Network Interface resource.
  final pulumi.Input<String>? migrationPhase;
  /// The name of the network interface.
  final pulumi.Input<String>? networkInterfaceName;
  /// The reference to the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroupNetwork>? networkSecurityGroup;
  /// Type of Network Interface resource.
  final pulumi.Input<String>? nicType;
  /// Privatelinkservice of the network interface resource.
  final pulumi.Input<PrivateLinkServiceNetwork>? privateLinkService;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// WorkloadType of the NetworkInterface for BareMetal resources
  final pulumi.Input<String>? workloadType;

  /// Creates a new [NetworkInterfaceArgs].
  /// [auxiliaryMode] Auxiliary mode of Network Interface resource.
  /// [auxiliarySku] Auxiliary sku of Network Interface resource.
  /// [disableTcpStateTracking] Indicates whether to disable tcp state tracking.
  /// [dnsSettings] The DNS settings in network interface.
  /// [enableAcceleratedNetworking] If the network interface is configured for accelerated networking. Not applicable to VM sizes which require accelerated networking.
  /// [enableIPForwarding] Indicates whether IP forwarding is enabled on this network interface.
  /// [extendedLocation] The extended location of the network interface.
  /// [id] Resource ID.
  /// [ipConfigurations] A list of IPConfigurations of the network interface.
  /// [location] Resource location.
  /// [migrationPhase] Migration phase of Network Interface resource.
  /// [networkInterfaceName] The name of the network interface.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [nicType] Type of Network Interface resource.
  /// [privateLinkService] Privatelinkservice of the network interface resource.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  /// [workloadType] WorkloadType of the NetworkInterface for BareMetal resources
  const NetworkInterfaceArgs({
    this.auxiliaryMode,
    this.auxiliarySku,
    this.disableTcpStateTracking,
    this.dnsSettings,
    this.enableAcceleratedNetworking,
    this.enableIPForwarding,
    this.extendedLocation,
    this.id,
    this.ipConfigurations,
    this.location,
    this.migrationPhase,
    this.networkInterfaceName,
    this.networkSecurityGroup,
    this.nicType,
    this.privateLinkService,
    required this.resourceGroupName,
    this.tags,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryMode': ?auxiliaryMode,
      'auxiliarySku': ?auxiliarySku,
      'disableTcpStateTracking': ?disableTcpStateTracking,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableIPForwarding': ?enableIPForwarding,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceIPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'migrationPhase': ?migrationPhase,
      'networkInterfaceName': ?networkInterfaceName,
      'networkSecurityGroup': ?networkSecurityGroup,
      'nicType': ?nicType,
      'privateLinkService': ?privateLinkService,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workloadType': ?workloadType,
    };
  }

  factory NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArgs(
      auxiliaryMode: (() { final guardedValue = map['auxiliaryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auxiliarySku: (() { final guardedValue = map['auxiliarySku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTcpStateTracking: (() { final guardedValue = map['disableTcpStateTracking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIPForwarding: (() { final guardedValue = map['enableIPForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIPConfiguration>(guardedValue, (value) => NetworkInterfaceIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationPhase: (() { final guardedValue = map['migrationPhase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceName: (() { final guardedValue = map['networkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as NetworkSecurityGroupNetwork); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkService: (() { final guardedValue = map['privateLinkService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as PrivateLinkServiceNetwork); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workloadType: (() { final guardedValue = map['workloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

