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
  NetworkInterfaceArgs({
    pulumi.Output<String>? auxiliaryMode,
    pulumi.Output<String>? auxiliarySku,
    pulumi.Output<bool>? disableTcpStateTracking,
    pulumi.Output<NetworkInterfaceDnsSettings>? dnsSettings,
    pulumi.Output<bool>? enableAcceleratedNetworking,
    pulumi.Output<bool>? enableIPForwarding,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? id,
    pulumi.Output<List<NetworkInterfaceIPConfiguration>>? ipConfigurations,
    pulumi.Output<String>? location,
    pulumi.Output<String>? migrationPhase,
    pulumi.Output<String>? networkInterfaceName,
    pulumi.Output<NetworkSecurityGroupNetwork>? networkSecurityGroup,
    pulumi.Output<String>? nicType,
    pulumi.Output<PrivateLinkServiceNetwork>? privateLinkService,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workloadType,
  }) :
      auxiliaryMode = pulumi.Input.asOptionalInput<String>(auxiliaryMode),
      auxiliarySku = pulumi.Input.asOptionalInput<String>(auxiliarySku),
      disableTcpStateTracking = pulumi.Input.asOptionalInput<bool>(disableTcpStateTracking),
      dnsSettings = pulumi.Input.asOptionalInput<NetworkInterfaceDnsSettings>(dnsSettings),
      enableAcceleratedNetworking = pulumi.Input.asOptionalInput<bool>(enableAcceleratedNetworking),
      enableIPForwarding = pulumi.Input.asOptionalInput<bool>(enableIPForwarding),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipConfigurations = pulumi.Input.asOptionalInput<List<NetworkInterfaceIPConfiguration>>(ipConfigurations),
      location = pulumi.Input.asOptionalInput<String>(location),
      migrationPhase = pulumi.Input.asOptionalInput<String>(migrationPhase),
      networkInterfaceName = pulumi.Input.asOptionalInput<String>(networkInterfaceName),
      networkSecurityGroup = pulumi.Input.asOptionalInput<NetworkSecurityGroupNetwork>(networkSecurityGroup),
      nicType = pulumi.Input.asOptionalInput<String>(nicType),
      privateLinkService = pulumi.Input.asOptionalInput<PrivateLinkServiceNetwork>(privateLinkService),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workloadType = pulumi.Input.asOptionalInput<String>(workloadType);

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
      auxiliaryMode: map['auxiliaryMode'] == null ? null : pulumi.Output.create<String>(map['auxiliaryMode'] as String),
      auxiliarySku: map['auxiliarySku'] == null ? null : pulumi.Output.create<String>(map['auxiliarySku'] as String),
      disableTcpStateTracking: map['disableTcpStateTracking'] == null ? null : pulumi.Output.create<bool>(map['disableTcpStateTracking'] as bool),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<NetworkInterfaceDnsSettings>(NetworkInterfaceDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : pulumi.Output.create<bool>(map['enableAcceleratedNetworking'] as bool),
      enableIPForwarding: map['enableIPForwarding'] == null ? null : pulumi.Output.create<bool>(map['enableIPForwarding'] as bool),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Output.create<List<NetworkInterfaceIPConfiguration>>(pulumi.Input.decodeList<NetworkInterfaceIPConfiguration>(map['ipConfigurations'], (value) => NetworkInterfaceIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migrationPhase: map['migrationPhase'] == null ? null : pulumi.Output.create<String>(map['migrationPhase'] as String),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceName'] as String),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : pulumi.Output.create<NetworkSecurityGroupNetwork>(map['networkSecurityGroup'] as NetworkSecurityGroupNetwork),
      nicType: map['nicType'] == null ? null : pulumi.Output.create<String>(map['nicType'] as String),
      privateLinkService: map['privateLinkService'] == null ? null : pulumi.Output.create<PrivateLinkServiceNetwork>(map['privateLinkService'] as PrivateLinkServiceNetwork),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workloadType: map['workloadType'] == null ? null : pulumi.Output.create<String>(map['workloadType'] as String),
    );
  }
}

