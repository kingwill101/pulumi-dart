// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayBgpSettingsPeeringAddress {
  /// A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway.
  ///
  /// &gt; **Note:** The valid range for the reserved APIPA address in Azure Public is from `169.254.21.0` to `169.254.22.255`.
  final pulumi.Input<List<String>>? apipaAddresses;
  /// A list of peering address assigned to the BGP peer of the Virtual Network Gateway.
  final pulumi.Input<List<String>>? defaultAddresses;
  /// The name of the IP configuration of this Virtual Network Gateway. In case there are multiple `ip_configuration` blocks defined, this property is **required** to specify.
  final pulumi.Input<String>? ipConfigurationName;
  /// A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway.
  final pulumi.Input<List<String>>? tunnelIpAddresses;

  /// Creates a new [VirtualNetworkGatewayBgpSettingsPeeringAddress].
  /// [apipaAddresses] A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway.
  /// [defaultAddresses] A list of peering address assigned to the BGP peer of the Virtual Network Gateway.
  /// [ipConfigurationName] The name of the IP configuration of this Virtual Network Gateway. In case there are multiple `ip_configuration` blocks defined, this property is **required** to specify.
  /// [tunnelIpAddresses] A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway.
  VirtualNetworkGatewayBgpSettingsPeeringAddress({
    this.apipaAddresses,
    this.defaultAddresses,
    this.ipConfigurationName,
    this.tunnelIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apipaAddresses': ?apipaAddresses,
      'defaultAddresses': ?defaultAddresses,
      'ipConfigurationName': ?ipConfigurationName,
      'tunnelIpAddresses': ?tunnelIpAddresses,
    };
  }

  factory VirtualNetworkGatewayBgpSettingsPeeringAddress.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayBgpSettingsPeeringAddress(
      apipaAddresses: (() { final guardedValue = map['apipaAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultAddresses: (() { final guardedValue = map['defaultAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipConfigurationName: (() { final guardedValue = map['ipConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelIpAddresses: (() { final guardedValue = map['tunnelIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

