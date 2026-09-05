// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_container.dart';
import 'get_network_ipam_config.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
  /// Containers attached to the network.
  final List<GetNetworkContainer>? containers;
  /// The driver of the Docker network. Possible values are `bridge`, `host`, `overlay`, `macvlan`. See [network docs](https://docs.docker.com/network/#network-drivers) for more details.
  final String? driver;
  /// The ID of this resource.
  final String? id;
  /// If `true`, the network is internal.
  final bool? internal;
  /// The IPAM configuration options
  final List<GetNetworkIpamConfig>? ipamConfigs;
  /// The name of the Docker network.
  final String? name;
  /// Only available with bridge networks. See [bridge options docs](https://docs.docker.com/engine/reference/commandline/network_create/#bridge-driver-options) for more details.
  final Map<String, String>? options;
  /// Scope of the network. One of `swarm`, `global`, or `local`.
  final String? scope;

  /// Creates a new [GetNetworkResult].
  /// [containers] Containers attached to the network.
  /// [driver] The driver of the Docker network. Possible values are `bridge`, `host`, `overlay`, `macvlan`. See [network docs](https://docs.docker.com/network/#network-drivers) for more details.
  /// [id] The ID of this resource.
  /// [internal] If `true`, the network is internal.
  /// [ipamConfigs] The IPAM configuration options
  /// [name] The name of the Docker network.
  /// [options] Only available with bridge networks. See [bridge options docs](https://docs.docker.com/engine/reference/commandline/network_create/#bridge-driver-options) for more details.
  /// [scope] Scope of the network. One of `swarm`, `global`, or `local`.
  const GetNetworkResult({
    this.containers,
    this.driver,
    this.id,
    this.internal,
    this.ipamConfigs,
    this.name,
    this.options,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?(() { final guardedValue = containers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkContainer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'driver': ?driver,
      'id': ?id,
      'internal': ?internal,
      'ipamConfigs': ?(() { final guardedValue = ipamConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkIpamConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'options': ?options,
      'scope': ?scope,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkContainer>(guardedValue, (value) => GetNetworkContainer.fromMap((value as Map).cast<String, dynamic>())); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internal: (() { final guardedValue = map['internal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ipamConfigs: (() { final guardedValue = map['ipamConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkIpamConfig>(guardedValue, (value) => GetNetworkIpamConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
