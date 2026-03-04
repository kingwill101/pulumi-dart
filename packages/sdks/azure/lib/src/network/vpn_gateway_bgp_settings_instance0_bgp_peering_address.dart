// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnGatewayBgpSettingsInstance0BgpPeeringAddress {
  /// A list of custom BGP peering addresses to assign to this instance.
  final pulumi.Input<List<String>> customIps;

  /// The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration.
  final pulumi.Input<List<String>>? defaultIps;

  /// The pre-defined id of VPN Gateway IP Configuration.
  final pulumi.Input<String>? ipConfigurationId;

  /// The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration.
  final pulumi.Input<List<String>>? tunnelIps;

  /// Creates a new [VpnGatewayBgpSettingsInstance0BgpPeeringAddress].
  /// [customIps] A list of custom BGP peering addresses to assign to this instance.
  /// [defaultIps] The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration.
  /// [ipConfigurationId] The pre-defined id of VPN Gateway IP Configuration.
  /// [tunnelIps] The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration.
  VpnGatewayBgpSettingsInstance0BgpPeeringAddress({
    required this.customIps,
    this.defaultIps,
    this.ipConfigurationId,
    this.tunnelIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIps': customIps,
      'defaultIps': ?defaultIps,
      'ipConfigurationId': ?ipConfigurationId,
      'tunnelIps': ?tunnelIps,
    };
  }

  factory VpnGatewayBgpSettingsInstance0BgpPeeringAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpnGatewayBgpSettingsInstance0BgpPeeringAddress(
      customIps: pulumi.Input.fromValue(
        (map['customIps'] as List).cast<String>(),
      ),
      defaultIps: (() {
        final guardedValue = map['defaultIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipConfigurationId: (() {
        final guardedValue = map['ipConfigurationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelIps: (() {
        final guardedValue = map['tunnelIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
