// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_network_psc_config.dart';

class GetInstanceNetwork {
  /// The network connect mode of the Filestore instance.
  /// If not provided, the connect mode defaults to
  /// DIRECT_PEERING. Default value: "DIRECT_PEERING" Possible values: ["DIRECT_PEERING", "PRIVATE_SERVICE_ACCESS", "PRIVATE_SERVICE_CONNECT"]
  final pulumi.Input<String> connectMode;
  /// A list of IPv4 or IPv6 addresses.
  final pulumi.Input<List<String>> ipAddresses;
  /// IP versions for which the instance has
  /// IP addresses assigned. Possible values: ["ADDRESS_MODE_UNSPECIFIED", "MODE_IPV4", "MODE_IPV6"]
  final pulumi.Input<List<String>> modes;
  /// The name of the GCE VPC network to which the
  /// instance is connected.
  final pulumi.Input<String> network;
  /// Private Service Connect configuration.
  /// Should only be set when connect_mode is PRIVATE_SERVICE_CONNECT.
  final pulumi.Input<List<GetInstanceNetworkPscConfig>> pscConfigs;
  /// A /29 CIDR block that identifies the range of IP
  /// addresses reserved for this instance.
  final pulumi.Input<String> reservedIpRange;

  /// Creates a new [GetInstanceNetwork].
  /// [connectMode] The network connect mode of the Filestore instance.
  /// [ipAddresses] A list of IPv4 or IPv6 addresses.
  /// [modes] IP versions for which the instance has
  /// [network] The name of the GCE VPC network to which the
  /// [pscConfigs] Private Service Connect configuration.
  /// [reservedIpRange] A /29 CIDR block that identifies the range of IP
  GetInstanceNetwork({
    required this.connectMode,
    required this.ipAddresses,
    required this.modes,
    required this.network,
    required this.pscConfigs,
    required this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectMode': connectMode,
      'ipAddresses': ipAddresses,
      'modes': modes,
      'network': network,
      'pscConfigs': pulumi.Input.mapInputValue<List<GetInstanceNetworkPscConfig>, List<Map<String, dynamic>>>(pscConfigs, (value) => pulumi.Input.encodeList<GetInstanceNetworkPscConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservedIpRange': reservedIpRange,
    };
  }

  factory GetInstanceNetwork.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetwork(
      connectMode: pulumi.Input.fromValue(map['connectMode'] as String),
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
      modes: pulumi.Input.fromValue((map['modes'] as List).cast<String>()),
      network: pulumi.Input.fromValue(map['network'] as String),
      pscConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceNetworkPscConfig>(map['pscConfigs']!, (value) => GetInstanceNetworkPscConfig.fromMap((value as Map).cast<String, dynamic>()))),
      reservedIpRange: pulumi.Input.fromValue(map['reservedIpRange'] as String),
    );
  }
}

