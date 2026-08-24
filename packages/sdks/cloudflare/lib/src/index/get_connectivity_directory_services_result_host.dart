// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_directory_services_result_host_network.dart';
import 'get_connectivity_directory_services_result_host_resolver_network.dart';

class GetConnectivityDirectoryServicesResultHost {
  final pulumi.Input<String> hostname;
  final pulumi.Input<String> ipv4;
  final pulumi.Input<String> ipv6;
  final pulumi.Input<GetConnectivityDirectoryServicesResultHostNetwork> network;
  final pulumi.Input<GetConnectivityDirectoryServicesResultHostResolverNetwork> resolverNetwork;

  /// Creates a new [GetConnectivityDirectoryServicesResultHost].
  /// [hostname] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  /// [network] Required.
  /// [resolverNetwork] Required.
  const GetConnectivityDirectoryServicesResultHost({
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
      'network': pulumi.Input.mapInputValue<GetConnectivityDirectoryServicesResultHostNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'resolverNetwork': pulumi.Input.mapInputValue<GetConnectivityDirectoryServicesResultHostResolverNetwork, Map<String, dynamic>>(resolverNetwork, (value) => value.toMap()),
    };
  }

  factory GetConnectivityDirectoryServicesResultHost.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServicesResultHost(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ipv4: pulumi.Input.fromValue(map['ipv4'] as String),
      ipv6: pulumi.Input.fromValue(map['ipv6'] as String),
      network: pulumi.Input.fromValue(GetConnectivityDirectoryServicesResultHostNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())),
      resolverNetwork: pulumi.Input.fromValue(GetConnectivityDirectoryServicesResultHostResolverNetwork.fromMap((map['resolverNetwork']! as Map).cast<String, dynamic>())),
    );
  }
}
