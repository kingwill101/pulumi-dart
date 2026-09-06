// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration.dart';
import 'sub_resource.dart';

/// Specifies the settings for a network interface to attach to the node type.
class AdditionalNetworkInterfaceConfiguration {
  /// Specifies the DSCP configuration to apply to the network interface.
  final pulumi.Input<SubResource?>? dscpConfiguration;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final pulumi.Input<bool?>? enableAcceleratedNetworking;
  /// Specifies the IP configurations of the network interface.
  final pulumi.Input<List<IpConfiguration>> ipConfigurations;
  /// Name of the network interface.
  final pulumi.Input<String> name;

  /// Creates a new [AdditionalNetworkInterfaceConfiguration].
  /// [dscpConfiguration] Specifies the DSCP configuration to apply to the network interface.
  /// [enableAcceleratedNetworking] Specifies whether the network interface is accelerated networking-enabled.
  /// [ipConfigurations] Specifies the IP configurations of the network interface.
  /// [name] Name of the network interface.
  const AdditionalNetworkInterfaceConfiguration({
    this.dscpConfiguration,
    this.enableAcceleratedNetworking,
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(dscpConfiguration, (value) => value.toMap()),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'ipConfigurations': pulumi.Input.mapInputValue<List<IpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory AdditionalNetworkInterfaceConfiguration.fromMap(Map<String, dynamic> map) {
    return AdditionalNetworkInterfaceConfiguration(
      dscpConfiguration: (() { final guardedValue = map['dscpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<IpConfiguration>(map['ipConfigurations']!, (value) => IpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
