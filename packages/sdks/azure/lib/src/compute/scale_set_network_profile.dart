// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_network_profile_dns_settings.dart';
import 'scale_set_network_profile_ip_configuration.dart';

class ScaleSetNetworkProfile {
  /// Specifies whether to enable accelerated networking or not.
  final pulumi.Input<bool>? acceleratedNetworking;
  /// A `dns_settings` block as documented below.
  final pulumi.Input<ScaleSetNetworkProfileDnsSettings>? dnsSettings;
  /// An `ip_configuration` block as documented below.
  final pulumi.Input<List<ScaleSetNetworkProfileIpConfiguration>> ipConfigurations;
  /// Whether IP forwarding is enabled on this NIC. Defaults to `false`.
  final pulumi.Input<bool>? ipForwarding;
  /// Specifies the name of the network interface configuration.
  final pulumi.Input<String> name;
  /// Specifies the identifier for the network security group.
  final pulumi.Input<String>? networkSecurityGroupId;
  /// Indicates whether network interfaces created from the network interface configuration will be the primary NIC of the VM.
  final pulumi.Input<bool> primary;

  /// Creates a new [ScaleSetNetworkProfile].
  /// [acceleratedNetworking] Specifies whether to enable accelerated networking or not.
  /// [dnsSettings] A `dns_settings` block as documented below.
  /// [ipConfigurations] An `ip_configuration` block as documented below.
  /// [ipForwarding] Whether IP forwarding is enabled on this NIC. Defaults to `false`.
  /// [name] Specifies the name of the network interface configuration.
  /// [networkSecurityGroupId] Specifies the identifier for the network security group.
  /// [primary] Indicates whether network interfaces created from the network interface configuration will be the primary NIC of the VM.
  ScaleSetNetworkProfile({
    this.acceleratedNetworking,
    this.dnsSettings,
    required this.ipConfigurations,
    this.ipForwarding,
    required this.name,
    this.networkSecurityGroupId,
    required this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworking': ?acceleratedNetworking,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<ScaleSetNetworkProfileDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'ipConfigurations': pulumi.Input.mapInputValue<List<ScaleSetNetworkProfileIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<ScaleSetNetworkProfileIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipForwarding': ?ipForwarding,
      'name': name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'primary': primary,
    };
  }

  factory ScaleSetNetworkProfile.fromMap(Map<String, dynamic> map) {
    return ScaleSetNetworkProfile(
      acceleratedNetworking: map['acceleratedNetworking'] == null ? null : (map['acceleratedNetworking'] as bool).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (ScaleSetNetworkProfileDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      ipConfigurations: (pulumi.Input.decodeList<ScaleSetNetworkProfileIpConfiguration>(map['ipConfigurations'], (value) => ScaleSetNetworkProfileIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipForwarding: map['ipForwarding'] == null ? null : (map['ipForwarding'] as bool).input(),
      name: (map['name'] as String).input(),
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : (map['networkSecurityGroupId'] as String).input(),
      primary: (map['primary'] as bool).input(),
    );
  }
}

