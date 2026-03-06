// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'network_interface_dns_settings_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'network_interface_tap_configuration_response.dart';
import 'network_security_group_response.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// Auxiliary mode of Network Interface resource.
  final String? auxiliaryMode;
  /// Auxiliary sku of Network Interface resource.
  final String? auxiliarySku;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Whether default outbound connectivity for nic was configured or not.
  final bool defaultOutboundConnectivityEnabled;
  /// Indicates whether to disable tcp state tracking.
  final bool? disableTcpStateTracking;
  /// The DNS settings in network interface.
  final NetworkInterfaceDnsSettingsResponse? dnsSettings;
  /// A reference to the dscp configuration to which the network interface is linked.
  final SubResourceResponse dscpConfiguration;
  /// If the network interface is configured for accelerated networking. Not applicable to VM sizes which require accelerated networking.
  final bool? enableAcceleratedNetworking;
  /// Indicates whether IP forwarding is enabled on this network interface.
  final bool? enableIPForwarding;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The extended location of the network interface.
  final ExtendedLocationResponse? extendedLocation;
  /// A list of references to linked BareMetal resources.
  final List<String> hostedWorkloads;
  /// Resource ID.
  final String? id;
  /// A list of IPConfigurations of the network interface.
  final List<NetworkInterfaceIPConfigurationResponse>? ipConfigurations;
  /// Resource location.
  final String? location;
  /// The MAC address of the network interface.
  final String macAddress;
  /// Migration phase of Network Interface resource.
  final String? migrationPhase;
  /// Resource name.
  final String name;
  /// The reference to the NetworkSecurityGroup resource.
  final NetworkSecurityGroupResponse? networkSecurityGroup;
  /// Type of Network Interface resource.
  final String? nicType;
  /// Whether this is a primary network interface on a virtual machine.
  final bool primary;
  /// A reference to the private endpoint to which the network interface is linked.
  final PrivateEndpointResponse privateEndpoint;
  /// Privatelinkservice of the network interface resource.
  final PrivateLinkServiceResponse? privateLinkService;
  /// The provisioning state of the network interface resource.
  final String provisioningState;
  /// The resource GUID property of the network interface resource.
  final String resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// A list of TapConfigurations of the network interface.
  final List<NetworkInterfaceTapConfigurationResponse> tapConfigurations;
  /// Resource type.
  final String type;
  /// The reference to a virtual machine.
  final SubResourceResponse virtualMachine;
  /// Whether the virtual machine this nic is attached to supports encryption.
  final bool vnetEncryptionSupported;
  /// WorkloadType of the NetworkInterface for BareMetal resources
  final String? workloadType;

  /// Creates a new [GetNetworkInterfaceResult].
  /// [auxiliaryMode] Auxiliary mode of Network Interface resource.
  /// [auxiliarySku] Auxiliary sku of Network Interface resource.
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetNetworkInterfaceResult({
    this.auxiliaryMode,
    this.auxiliarySku,
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'defaultOutboundConnectivityEnabled': defaultOutboundConnectivityEnabled,
      'disableTcpStateTracking': ?disableTcpStateTracking,
      'dnsSettings': ?dnsSettings?.toMap(),
      'dscpConfiguration': dscpConfiguration.toMap(),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableIPForwarding': ?enableIPForwarding,
      'etag': etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hostedWorkloads': hostedWorkloads,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'macAddress': macAddress,
      'migrationPhase': ?migrationPhase,
      'name': name,
      'networkSecurityGroup': ?networkSecurityGroup?.toMap(),
      'nicType': ?nicType,
      'primary': primary,
      'privateEndpoint': privateEndpoint.toMap(),
      'privateLinkService': ?privateLinkService?.toMap(),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'tapConfigurations': pulumi.Input.encodeList<NetworkInterfaceTapConfigurationResponse, Map<String, dynamic>>(tapConfigurations, (value) => value.toMap()),
      'type': type,
      'virtualMachine': virtualMachine.toMap(),
      'vnetEncryptionSupported': vnetEncryptionSupported,
      'workloadType': ?workloadType,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      auxiliaryMode: (() { final guardedValue = map['auxiliaryMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      auxiliarySku: (() { final guardedValue = map['auxiliarySku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      defaultOutboundConnectivityEnabled: map['defaultOutboundConnectivityEnabled'] as bool,
      disableTcpStateTracking: (() { final guardedValue = map['disableTcpStateTracking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return NetworkInterfaceDnsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dscpConfiguration: SubResourceResponse.fromMap((map['dscpConfiguration']! as Map).cast<String, dynamic>()),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableIPForwarding: (() { final guardedValue = map['enableIPForwarding']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: map['etag'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostedWorkloads: (map['hostedWorkloads'] as List).cast<String>(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(guardedValue, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      macAddress: map['macAddress'] as String,
      migrationPhase: (() { final guardedValue = map['migrationPhase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return NetworkSecurityGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primary: map['primary'] as bool,
      privateEndpoint: PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>()),
      privateLinkService: (() { final guardedValue = map['privateLinkService']; if (guardedValue == null) return null; return PrivateLinkServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tapConfigurations: pulumi.Input.decodeList<NetworkInterfaceTapConfigurationResponse>(map['tapConfigurations']!, (value) => NetworkInterfaceTapConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      virtualMachine: SubResourceResponse.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>()),
      vnetEncryptionSupported: map['vnetEncryptionSupported'] as bool,
      workloadType: (() { final guardedValue = map['workloadType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

