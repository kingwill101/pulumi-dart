// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_ipam_config.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
  /// The driver of the Docker network. Possible values are `bridge`, `host`, `overlay`, `macvlan`. See [network docs](https://docs.docker.com/network/#network-drivers) for more details.
  final String driver;

  /// The ID of this resource.
  final String id;

  /// If `true`, the network is internal.
  final bool internal;

  /// The IPAM configuration options
  final List<GetNetworkIpamConfig> ipamConfigs;

  /// The name of the Docker network.
  final String name;

  /// Only available with bridge networks. See [bridge options docs](https://docs.docker.com/engine/reference/commandline/network_create/#bridge-driver-options) for more details.
  final Map<String, String> options;

  /// Scope of the network. One of `swarm`, `global`, or `local`.
  final String scope;

  /// Creates a new [GetNetworkResult].
  /// [driver] The driver of the Docker network. Possible values are `bridge`, `host`, `overlay`, `macvlan`. See [network docs](https://docs.docker.com/network/#network-drivers) for more details.
  /// [id] The ID of this resource.
  /// [internal] If `true`, the network is internal.
  /// [ipamConfigs] The IPAM configuration options
  /// [name] The name of the Docker network.
  /// [options] Only available with bridge networks. See [bridge options docs](https://docs.docker.com/engine/reference/commandline/network_create/#bridge-driver-options) for more details.
  /// [scope] Scope of the network. One of `swarm`, `global`, or `local`.
  GetNetworkResult({
    required this.driver,
    required this.id,
    required this.internal,
    required this.ipamConfigs,
    required this.name,
    required this.options,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': driver,
      'id': id,
      'internal': internal,
      'ipamConfigs':
          pulumi.Input.encodeList<GetNetworkIpamConfig, Map<String, dynamic>>(
            ipamConfigs,
            (value) => value.toMap(),
          ),
      'name': name,
      'options': options,
      'scope': scope,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      driver: map['driver'] as String,
      id: map['id'] as String,
      internal: map['internal'] as bool,
      ipamConfigs: pulumi.Input.decodeList<GetNetworkIpamConfig>(
        map['ipamConfigs']!,
        (value) => GetNetworkIpamConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      options: (map['options'] as Map).cast<String, String>(),
      scope: map['scope'] as String,
    );
  }
}
