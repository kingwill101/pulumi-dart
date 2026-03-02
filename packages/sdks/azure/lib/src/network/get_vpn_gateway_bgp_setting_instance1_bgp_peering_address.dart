// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnGatewayBgpSettingInstance1BgpPeeringAddress {
  /// A list of custom BGP peering addresses to assigned to this instance.
  final pulumi.Input<List<String>> customIps;
  /// The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration.
  final pulumi.Input<List<String>> defaultIps;
  /// The pre-defined id of VPN Gateway IP Configuration.
  final pulumi.Input<String> ipConfigurationId;
  /// The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration.
  final pulumi.Input<List<String>> tunnelIps;

  /// Creates a new [GetVpnGatewayBgpSettingInstance1BgpPeeringAddress].
  /// [customIps] A list of custom BGP peering addresses to assigned to this instance.
  /// [defaultIps] The list of default BGP peering addresses which belong to the pre-defined VPN Gateway IP configuration.
  /// [ipConfigurationId] The pre-defined id of VPN Gateway IP Configuration.
  /// [tunnelIps] The list of tunnel public IP addresses which belong to the pre-defined VPN Gateway IP configuration.
  GetVpnGatewayBgpSettingInstance1BgpPeeringAddress({
    required this.customIps,
    required this.defaultIps,
    required this.ipConfigurationId,
    required this.tunnelIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customIps': customIps,
      'defaultIps': defaultIps,
      'ipConfigurationId': ipConfigurationId,
      'tunnelIps': tunnelIps,
    };
  }

  factory GetVpnGatewayBgpSettingInstance1BgpPeeringAddress.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayBgpSettingInstance1BgpPeeringAddress(
      customIps: ((map['customIps'] as List).cast<String>()).input(),
      defaultIps: ((map['defaultIps'] as List).cast<String>()).input(),
      ipConfigurationId: (map['ipConfigurationId'] as String).input(),
      tunnelIps: ((map['tunnelIps'] as List).cast<String>()).input(),
    );
  }
}

