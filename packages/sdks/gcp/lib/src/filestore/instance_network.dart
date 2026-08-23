// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_network_psc_config.dart';

class InstanceNetwork {
  /// The network connect mode of the Filestore instance.
  /// If not provided, the connect mode defaults to
  /// DIRECT_PEERING.
  /// Default value is `DIRECT_PEERING`.
  /// Possible values are: `DIRECT_PEERING`, `PRIVATE_SERVICE_ACCESS`, `PRIVATE_SERVICE_CONNECT`.
  final pulumi.Input<String>? connectMode;
  /// (Output)
  /// A list of IPv4 or IPv6 addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  /// IP versions for which the instance has
  /// IP addresses assigned.
  /// Each value may be one of: `ADDRESS_MODE_UNSPECIFIED`, `MODE_IPV4`, `MODE_IPV6`.
  final pulumi.Input<List<String>> modes;
  /// The name of the GCE VPC network to which the
  /// instance is connected.
  final pulumi.Input<String> network;
  /// Private Service Connect configuration.
  /// Should only be set when connectMode is PRIVATE_SERVICE_CONNECT.
  /// Structure is documented below.
  final pulumi.Input<InstanceNetworkPscConfig>? pscConfig;
  /// A /29 CIDR block that identifies the range of IP
  /// addresses reserved for this instance.
  final pulumi.Input<String>? reservedIpRange;

  /// Creates a new [InstanceNetwork].
  /// [connectMode] The network connect mode of the Filestore instance.
  /// [ipAddresses] (Output)
  /// [modes] IP versions for which the instance has
  /// [network] The name of the GCE VPC network to which the
  /// [pscConfig] Private Service Connect configuration.
  /// [reservedIpRange] A /29 CIDR block that identifies the range of IP
  const InstanceNetwork({
    this.connectMode,
    this.ipAddresses,
    required this.modes,
    required this.network,
    this.pscConfig,
    this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectMode': ?connectMode,
      'ipAddresses': ?ipAddresses,
      'modes': modes,
      'network': network,
      'pscConfig': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkPscConfig, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
      'reservedIpRange': ?reservedIpRange,
    };
  }

  factory InstanceNetwork.fromMap(Map<String, dynamic> map) {
    return InstanceNetwork(
      connectMode: (() { final guardedValue = map['connectMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      modes: pulumi.Input.fromValue((map['modes'] as List).cast<String>()),
      network: pulumi.Input.fromValue(map['network'] as String),
      pscConfig: (() { final guardedValue = map['pscConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceNetworkPscConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      reservedIpRange: (() { final guardedValue = map['reservedIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
