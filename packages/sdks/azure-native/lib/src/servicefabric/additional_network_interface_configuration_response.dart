// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration_response.dart';
import 'sub_resource_response.dart';

/// Specifies the settings for a network interface to attach to the node type.
class AdditionalNetworkInterfaceConfigurationResponse {
  /// Specifies the DSCP configuration to apply to the network interface.
  final pulumi.Input<SubResourceResponse>? dscpConfiguration;
  /// Specifies whether the network interface is accelerated networking-enabled.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// Specifies the IP configurations of the network interface.
  final pulumi.Input<List<IpConfigurationResponse>> ipConfigurations;
  /// Name of the network interface.
  final pulumi.Input<String> name;

  /// Creates a new [AdditionalNetworkInterfaceConfigurationResponse].
  /// [dscpConfiguration] Specifies the DSCP configuration to apply to the network interface.
  /// [enableAcceleratedNetworking] Specifies whether the network interface is accelerated networking-enabled.
  /// [ipConfigurations] Specifies the IP configurations of the network interface.
  /// [name] Name of the network interface.
  AdditionalNetworkInterfaceConfigurationResponse({
    this.dscpConfiguration,
    this.enableAcceleratedNetworking,
    required this.ipConfigurations,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dscpConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(dscpConfiguration, (value) => value.toMap()),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'ipConfigurations': pulumi.Input.mapInputValue<List<IpConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IpConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory AdditionalNetworkInterfaceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalNetworkInterfaceConfigurationResponse(
      dscpConfiguration: map['dscpConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['dscpConfiguration']! as Map).cast<String, dynamic>())).input(),
      enableAcceleratedNetworking: map['enableAcceleratedNetworking'] == null ? null : (map['enableAcceleratedNetworking']! as bool).input(),
      ipConfigurations: (pulumi.Input.decodeList<IpConfigurationResponse>(map['ipConfigurations'], (value) => IpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

