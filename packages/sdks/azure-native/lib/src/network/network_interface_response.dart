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
      auxiliaryMode: (() { final guardedValue = map['auxiliaryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auxiliarySku: (() { final guardedValue = map['auxiliarySku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultOutboundConnectivityEnabled: pulumi.Input.fromValue(map['defaultOutboundConnectivityEnabled'] as bool),
      disableTcpStateTracking: (() { final guardedValue = map['disableTcpStateTracking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceDnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dscpConfiguration: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['dscpConfiguration']! as Map).cast<String, dynamic>())),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIPForwarding: (() { final guardedValue = map['enableIPForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostedWorkloads: pulumi.Input.fromValue((map['hostedWorkloads'] as List).cast<String>()),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceEndpoint: (() { final guardedValue = map['interfaceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(guardedValue, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      migrationPhase: (() { final guardedValue = map['migrationPhase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      privateEndpoint: pulumi.Input.fromValue(PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
      privateLinkService: (() { final guardedValue = map['privateLinkService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tapConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceTapConfigurationResponse>(map['tapConfigurations']!, (value) => NetworkInterfaceTapConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualMachine: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>())),
      vnetEncryptionSupported: pulumi.Input.fromValue(map['vnetEncryptionSupported'] as bool),
      workloadType: (() { final guardedValue = map['workloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

