// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interface_endpoint_response.dart';
import 'network_interface_dns_settings_interface_endpoint_response.dart';
import 'network_interface_ipconfiguration_response_v1.dart';
import 'network_interface_tap_configuration_response_v1.dart';
import 'network_security_group_interface_endpoint_response.dart';
import 'sub_resource_response.dart';

/// A network interface in a resource group.
class NetworkInterfaceInterfaceEndpointResponse {
  /// The DNS settings in network interface.
  final pulumi.Input<NetworkInterfaceDnsSettingsInterfaceEndpointResponse?>? dnsSettings;
  /// If the network interface is accelerated networking enabled.
  final pulumi.Input<bool?>? enableAcceleratedNetworking;
  /// Indicates whether IP forwarding is enabled on this network interface.
  final pulumi.Input<bool?>? enableIPForwarding;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// A list of references to linked BareMetal resources
  final pulumi.Input<List<String>> hostedWorkloads;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// A reference to the interface endpoint to which the network interface is linked.
  final pulumi.Input<InterfaceEndpointResponse> interfaceEndpoint;
  /// A list of IPConfigurations of the network interface.
  final pulumi.Input<List<NetworkInterfaceIPConfigurationResponseV1>?>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The MAC address of the network interface.
  final pulumi.Input<String?>? macAddress;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The reference of the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroupInterfaceEndpointResponse?>? networkSecurityGroup;
  /// Gets whether this is a primary network interface on a virtual machine.
  final pulumi.Input<bool?>? primary;
  /// The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String?>? provisioningState;
  /// The resource GUID property of the network interface resource.
  final pulumi.Input<String?>? resourceGuid;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A list of TapConfigurations of the network interface.
  final pulumi.Input<List<NetworkInterfaceTapConfigurationResponseV1>?>? tapConfigurations;
  /// Resource type.
  final pulumi.Input<String> type;
  /// The reference of a virtual machine.
  final pulumi.Input<SubResourceResponse> virtualMachine;

  /// Creates a new [NetworkInterfaceInterfaceEndpointResponse].
  /// [dnsSettings] The DNS settings in network interface.
  /// [enableAcceleratedNetworking] If the network interface is accelerated networking enabled.
  /// [enableIPForwarding] Indicates whether IP forwarding is enabled on this network interface.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [hostedWorkloads] A list of references to linked BareMetal resources
  /// [id] Resource ID.
  /// [interfaceEndpoint] A reference to the interface endpoint to which the network interface is linked.
  /// [ipConfigurations] A list of IPConfigurations of the network interface.
  /// [location] Resource location.
  /// [macAddress] The MAC address of the network interface.
  /// [name] Resource name.
  /// [networkSecurityGroup] The reference of the NetworkSecurityGroup resource.
  /// [primary] Gets whether this is a primary network interface on a virtual machine.
  /// [provisioningState] The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [resourceGuid] The resource GUID property of the network interface resource.
  /// [tags] Resource tags.
  /// [tapConfigurations] A list of TapConfigurations of the network interface.
  /// [type] Resource type.
  /// [virtualMachine] The reference of a virtual machine.
  const NetworkInterfaceInterfaceEndpointResponse({
    this.dnsSettings,
    this.enableAcceleratedNetworking,
    this.enableIPForwarding,
    this.etag,
    required this.hostedWorkloads,
    this.id,
    required this.interfaceEndpoint,
    this.ipConfigurations,
    this.location,
    this.macAddress,
    required this.name,
    this.networkSecurityGroup,
    this.primary,
    this.provisioningState,
    this.resourceGuid,
    this.tags,
    this.tapConfigurations,
    required this.type,
    required this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceDnsSettingsInterfaceEndpointResponse, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'enableIPForwarding': ?enableIPForwarding,
      'etag': ?etag,
      'hostedWorkloads': hostedWorkloads,
      'id': ?id,
      'interfaceEndpoint': pulumi.Input.mapInputValue<InterfaceEndpointResponse, Map<String, dynamic>>(interfaceEndpoint, (value) => value.toMap()),
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceIPConfigurationResponseV1>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponseV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'macAddress': ?macAddress,
      'name': name,
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupInterfaceEndpointResponse, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'primary': ?primary,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'tags': ?tags,
      'tapConfigurations': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceTapConfigurationResponseV1>, List<Map<String, dynamic>>>(tapConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceTapConfigurationResponseV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'virtualMachine': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceInterfaceEndpointResponse(
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceDnsSettingsInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIPForwarding: (() { final guardedValue = map['enableIPForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedWorkloads: pulumi.Input.fromValue((map['hostedWorkloads'] as List).cast<String>()),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceEndpoint: pulumi.Input.fromValue(InterfaceEndpointResponse.fromMap((map['interfaceEndpoint']! as Map).cast<String, dynamic>())),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponseV1>(guardedValue, (value) => NetworkInterfaceIPConfigurationResponseV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tapConfigurations: (() { final guardedValue = map['tapConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceTapConfigurationResponseV1>(guardedValue, (value) => NetworkInterfaceTapConfigurationResponseV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualMachine: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>())),
    );
  }
}
