// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_directory_service_host_network.dart';
import 'connectivity_directory_service_host_resolver_network.dart';

class ConnectivityDirectoryServiceHost {
  final pulumi.Input<String?>? hostname;
  final pulumi.Input<String?>? ipv4;
  final pulumi.Input<String?>? ipv6;
  final pulumi.Input<ConnectivityDirectoryServiceHostNetwork?>? network;
  final pulumi.Input<ConnectivityDirectoryServiceHostResolverNetwork?>? resolverNetwork;

  /// Creates a new [ConnectivityDirectoryServiceHost].
  /// [hostname] Optional.
  /// [ipv4] Optional.
  /// [ipv6] Optional.
  /// [network] Optional.
  /// [resolverNetwork] Optional.
  const ConnectivityDirectoryServiceHost({
    this.hostname,
    this.ipv4,
    this.ipv6,
    this.network,
    this.resolverNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ipv4': ?ipv4,
      'ipv6': ?ipv6,
      'network': ?pulumi.Input.mapOptionalInputValue<ConnectivityDirectoryServiceHostNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'resolverNetwork': ?pulumi.Input.mapOptionalInputValue<ConnectivityDirectoryServiceHostResolverNetwork, Map<String, dynamic>>(resolverNetwork, (value) => value.toMap()),
    };
  }

  factory ConnectivityDirectoryServiceHost.fromMap(Map<String, dynamic> map) {
    return ConnectivityDirectoryServiceHost(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityDirectoryServiceHostNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resolverNetwork: (() { final guardedValue = map['resolverNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityDirectoryServiceHostResolverNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
