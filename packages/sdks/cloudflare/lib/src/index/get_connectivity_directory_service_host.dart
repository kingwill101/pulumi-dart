// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_directory_service_host_network.dart';
import 'get_connectivity_directory_service_host_resolver_network.dart';

class GetConnectivityDirectoryServiceHost {
  final pulumi.Input<String> hostname;
  final pulumi.Input<String> ipv4;
  final pulumi.Input<String> ipv6;
  final pulumi.Input<GetConnectivityDirectoryServiceHostNetwork> network;
  final pulumi.Input<GetConnectivityDirectoryServiceHostResolverNetwork> resolverNetwork;

  /// Creates a new [GetConnectivityDirectoryServiceHost].
  /// [hostname] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  /// [network] Required.
  /// [resolverNetwork] Required.
  const GetConnectivityDirectoryServiceHost({
    required this.hostname,
    required this.ipv4,
    required this.ipv6,
    required this.network,
    required this.resolverNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'ipv4': ipv4,
      'ipv6': ipv6,
      'network': pulumi.Input.mapInputValue<GetConnectivityDirectoryServiceHostNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'resolverNetwork': pulumi.Input.mapInputValue<GetConnectivityDirectoryServiceHostResolverNetwork, Map<String, dynamic>>(resolverNetwork, (value) => value.toMap()),
    };
  }

  factory GetConnectivityDirectoryServiceHost.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceHost(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ipv4: pulumi.Input.fromValue(map['ipv4'] as String),
      ipv6: pulumi.Input.fromValue(map['ipv6'] as String),
      network: pulumi.Input.fromValue(GetConnectivityDirectoryServiceHostNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())),
      resolverNetwork: pulumi.Input.fromValue(GetConnectivityDirectoryServiceHostResolverNetwork.fromMap((map['resolverNetwork']! as Map).cast<String, dynamic>())),
    );
  }
}
