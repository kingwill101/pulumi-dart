// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'interface_endpoint_response.dart';
import 'network_interface_dns_settings_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'network_interface_tap_configuration_response.dart';
import 'network_security_group_response.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_response.dart';
import 'sub_resource_response.dart';

/// A network interface in a resource group.
class NetworkInterfaceResponse {
  /// Auxiliary mode of Network Interface resource.
  final pulumi.Input<String>? auxiliaryMode;
  /// Auxiliary sku of Network Interface resource.
  final pulumi.Input<String>? auxiliarySku;
  /// Whether default outbound connectivity for nic was configured or not.
  final pulumi.Input<bool> defaultOutboundConnectivityEnabled;
  /// Indicates whether to disable tcp state tracking.
  final pulumi.Input<bool>? disableTcpStateTracking;
  /// The DNS settings in network interface.
  final pulumi.Input<NetworkInterfaceDnsSettingsResponse>? dnsSettings;
  /// A reference to the dscp configuration to which the network interface is linked.
  final pulumi.Input<SubResourceResponse> dscpConfiguration;
  /// If the network interface is configured for accelerated networking. Not applicable to VM sizes which require accelerated networking.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// Indicates whether IP forwarding is enabled on this network interface.
  final pulumi.Input<bool>? enableIPForwarding;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The extended location of the network interface.
  final pulumi.Input<ExtendedLocationResponse>? extendedLocation;
  /// A list of references to linked BareMetal resources.
  final pulumi.Input<List<String>> hostedWorkloads;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// A reference to the interface endpoint to which the network interface is linked.
  final pulumi.Input<InterfaceEndpointResponse>? interfaceEndpoint;
  /// A list of IPConfigurations of the network interface.
  final pulumi.Input<List<NetworkInterfaceIPConfigurationResponse>>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The MAC address of the network interface.
  final pulumi.Input<String> macAddress;
  /// Migration phase of Network Interface resource.
  final pulumi.Input<String>? migrationPhase;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The reference to the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroupResponse>? networkSecurityGroup;
  /// Type of Network Interface resource.
  final pulumi.Input<String>? nicType;
  /// Whether this is a primary network interface on a virtual machine.
  final pulumi.Input<bool> primary;
  /// A reference to the private endpoint to which the network interface is linked.
  final pulumi.Input<PrivateEndpointResponse> privateEndpoint;
  /// Privatelinkservice of the network interface resource.
  final pulumi.Input<PrivateLinkServiceResponse>? privateLinkService;
  /// The provisioning state of the network interface resource.
  final pulumi.Input<String> provisioningState;
  /// The resource GUID property of the network interface resource.
  final pulumi.Input<String> resourceGuid;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of TapConfigurations of the network interface.
  final pulumi.Input<List<NetworkInterfaceTapConfigurationResponse>> tapConfigurations;
  /// Resource type.
  final pulumi.Input<String> type;
  /// The reference to a virtual machine.
  final pulumi.Input<SubResourceResponse> virtualMachine;
  /// Whether the virtual machine this nic is attached to supports encryption.
  final pulumi.Input<bool> vnetEncryptionSupported;
  /// WorkloadType of the NetworkInterface for BareMetal resources
  final pulumi.Input<String>? workloadType;

  /// Creates a new [NetworkInterfaceResponse].
  /// [auxiliaryMode] Auxiliary mode of Network Interface resource.
  /// [auxiliarySku] Auxiliary sku of Network Interface resource.
  /// [defaultOutboundConnectivityEnabled] Whether default outbound connectivity for nic was configured or not.
  /// [disableTcpStateTracking] Indicates whether to disable tcp state tracking.
  /// [dnsSettings] The DNS settings in network interface.
  /// [dscpConfiguration] A reference to the dscp configuration to which the network interface is linked.
  /// [enableAcceleratedNetworking] If the network interface is configured for accelerated networking. Not applicable to VM sizes which require accelerated networking.
  /// [enableIPForwarding] Indicates whether IP forwarding is enabled on this network interface.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the network interface.
  /// [hostedWorkloads] A list of references to linked BareMetal resources.
  /// [id] Resource ID.
  /// [interfaceEndpoint] A reference to the interface endpoint to which the network interface is linked.
  /// [ipConfigurations] A list of IPConfigurations of the network interface.
  /// [location] Resource location.
  /// [macAddress] The MAC address of the network interface.
  /// [migrationPhase] Migration phase of Network Interface resource.
  /// [name] Resource name.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [nicType] Type of Network Interface resource.
  /// [primary] Whether this is a primary network interface on a virtual machine.
  /// [privateEndpoint] A reference to the private endpoint to which the network interface is linked.
  /// [privateLinkService] Privatelinkservice of the network interface resource.
  /// [provisioningState] The provisioning state of the network interface resource.
  /// [resourceGuid] The resource GUID property of the network interface resource.
  /// [tags] Resource tags.
  /// [tapConfigurations] A list of TapConfigurations of the network interface.
  /// [type] Resource type.
  /// [virtualMachine] The reference to a virtual machine.
  /// [vnetEncryptionSupported] Whether the virtual machine this nic is attached to supports encryption.
  /// [workloadType] WorkloadType of the NetworkInterface for BareMetal resources
  NetworkInterfaceResponse({
    this.auxiliaryMode,
    this.auxiliarySku,
    required this.defaultOutboundConnectivityEnabled,
    this.disableTcpStateTracking,
    this.dnsSettings,
    required this.dscpConfiguration,
    this.enableAcceleratedNetworking,
    this.enableIPForwarding,
    required this.etag,
    this.extendedLocation,
    required this.hostedWorkloads,
    this.id,
    this.interfaceEndpoint,
    this.ipConfigurations,
    this.location,
    required this.macAddress,
    this.migrationPhase,
    required this.name,
    this.networkSecurityGroup,
    this.nicType,
    required this.primary,
    required this.privateEndpoint,
    this.privateLinkService,
    required this.provisioningState,
    required this.resourceGuid,
    this.tags,
    required this.tapConfigurations,
    required this.type,
    required this.virtualMachine,
    required this.vnetEncryptionSupported,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryMode': ?auxiliaryMode,
      'auxiliarySku': ?auxiliarySku,
      'defaultOutboundConnectivityEnabled': defaultOutboundConnectivityEnabled,
      'disableTcpStateTracking': ?disableTcpStateTracking,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceDnsSettingsResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'dscpConfiguration': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(dscpConfiguration, (value) => value.toMap()),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableIPForwarding': ?enableIPForwarding,
      'etag': etag,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hostedWorkloads': hostedWorkloads,
      'id': ?id,
      'interfaceEndpoint': ?pulumi.Input.mapOptionalInputValue<InterfaceEndpointResponse, Map<String, dynamic>>(interfaceEndpoint, (value) => value.toMap()),
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceIPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'macAddress': macAddress,
      'migrationPhase': ?migrationPhase,
      'name': name,
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'nicType': ?nicType,
      'primary': primary,
      'privateEndpoint': pulumi.Input.mapInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkService': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceResponse, Map<String, dynamic>>(privateLinkService, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'tapConfigurations': pulumi.Input.mapInputValue<List<NetworkInterfaceTapConfigurationResponse>, List<Map<String, dynamic>>>(tapConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceTapConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'virtualMachine': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
      'vnetEncryptionSupported': vnetEncryptionSupported,
      'workloadType': ?workloadType,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      auxiliaryMode: map['auxiliaryMode'] == null ? null : (map['auxiliaryMode']! as String).input(),
      auxiliarySku: map['auxiliarySku'] == null ? null : (map['auxiliarySku']! as String).input(),
      defaultOutboundConnectivityEnabled: (map['defaultOutboundConnectivityEnabled'] as bool).input(),
      disableTcpStateTracking: map['disableTcpStateTracking'] == null ? null : (map['disableTcpStateTracking']! as bool).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (NetworkInterfaceDnsSettingsResponse.fromMap((map['dnsSettings']! as Map).cast<String, dynamic>())).input(),
      dscpConfiguration: (SubResourceResponse.fromMap((map['dscpConfiguration'] as Map).cast<String, dynamic>())).input(),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : (map['enableAcceleratedNetworking']! as bool).input(),
      enableIPForwarding: map['enableIPForwarding'] == null ? null : (map['enableIPForwarding']! as bool).input(),
      etag: (map['etag'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      hostedWorkloads: ((map['hostedWorkloads'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      interfaceEndpoint: map['interfaceEndpoint'] == null ? null : (InterfaceEndpointResponse.fromMap((map['interfaceEndpoint']! as Map).cast<String, dynamic>())).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(map['ipConfigurations']!, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      macAddress: (map['macAddress'] as String).input(),
      migrationPhase: map['migrationPhase'] == null ? null : (map['migrationPhase']! as String).input(),
      name: (map['name'] as String).input(),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : (NetworkSecurityGroupResponse.fromMap((map['networkSecurityGroup']! as Map).cast<String, dynamic>())).input(),
      nicType: map['nicType'] == null ? null : (map['nicType']! as String).input(),
      primary: (map['primary'] as bool).input(),
      privateEndpoint: (PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())).input(),
      privateLinkService: map['privateLinkService'] == null ? null : (PrivateLinkServiceResponse.fromMap((map['privateLinkService']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tapConfigurations: (pulumi.Input.decodeList<NetworkInterfaceTapConfigurationResponse>(map['tapConfigurations'], (value) => NetworkInterfaceTapConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      virtualMachine: (SubResourceResponse.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>())).input(),
      vnetEncryptionSupported: (map['vnetEncryptionSupported'] as bool).input(),
      workloadType: map['workloadType'] == null ? null : (map['workloadType']! as String).input(),
    );
  }
}

