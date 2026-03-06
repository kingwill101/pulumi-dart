// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnGatewayConnectionTrafficSelectorPolicy {
  /// A list of local address spaces in CIDR format for this VPN Gateway Connection.
  final pulumi.Input<List<String>> localAddressRanges;
  /// A list of remote address spaces in CIDR format for this VPN Gateway Connection.
  final pulumi.Input<List<String>> remoteAddressRanges;

  /// Creates a new [VpnGatewayConnectionTrafficSelectorPolicy].
  /// [localAddressRanges] A list of local address spaces in CIDR format for this VPN Gateway Connection.
  /// [remoteAddressRanges] A list of remote address spaces in CIDR format for this VPN Gateway Connection.
  const VpnGatewayConnectionTrafficSelectorPolicy({
    required this.localAddressRanges,
    required this.remoteAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAddressRanges': localAddressRanges,
      'remoteAddressRanges': remoteAddressRanges,
    };
  }

  factory VpnGatewayConnectionTrafficSelectorPolicy.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionTrafficSelectorPolicy(
      localAddressRanges: pulumi.Input.fromValue((map['localAddressRanges'] as List).cast<String>()),
      remoteAddressRanges: pulumi.Input.fromValue((map['remoteAddressRanges'] as List).cast<String>()),
    );
  }
}

