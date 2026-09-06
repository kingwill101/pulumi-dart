// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress.dart';
import 'subnet.dart';

/// {@template pulumi_network_virtual_hub_ip_configuration_args_doc}
/// The set of arguments for VirtualHubIpConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_ip_configuration_args_doc}
class VirtualHubIpConfigurationArgs {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the ipconfig.
  final pulumi.Input<String?>? ipConfigName;
  /// Name of the Ip Configuration.
  final pulumi.Input<String?>? name;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String?>? privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<dynamic>? privateIPAllocationMethod;
  /// The reference to the public IP resource.
  final pulumi.Input<PublicIPAddress?>? publicIPAddress;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the subnet resource.
  final pulumi.Input<Subnet?>? subnet;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [VirtualHubIpConfigurationArgs].
  /// [id] Resource ID.
  /// [ipConfigName] The name of the ipconfig.
  /// [name] Name of the Ip Configuration.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [publicIPAddress] The reference to the public IP resource.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [subnet] The reference to the subnet resource.
  /// [virtualHubName] The name of the VirtualHub.
  const VirtualHubIpConfigurationArgs({
    this.id,
    this.ipConfigName,
    this.name,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.publicIPAddress,
    required this.resourceGroupName,
    this.subnet,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ipConfigName': ?ipConfigName,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddress, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'virtualHubName': virtualHubName,
    };
  }

  factory VirtualHubIpConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubIpConfigurationArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipConfigName: (() { final guardedValue = map['ipConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Subnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}
