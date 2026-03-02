// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_ipam_config.dart';
import 'network_label.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// Enable manual container attachment to the network.
  final pulumi.Input<bool>? attachable;
  /// Requests daemon to check for networks with same name.
  final pulumi.Input<bool>? checkDuplicate;
  /// The driver of the Docker network. Possible values are `bridge`, `host`, `overlay`, `macvlan`. See [network docs](https://docs.docker.com/network/#network-drivers) for more details.
  final pulumi.Input<String>? driver;
  /// Create swarm routing-mesh network. Defaults to `false`.
  final pulumi.Input<bool>? ingress;
  /// Whether the network is internal.
  final pulumi.Input<bool>? internal;
  /// The IPAM configuration options
  final pulumi.Input<List<NetworkIpamConfig>>? ipamConfigs;
  /// Driver used by the custom IP scheme of the network. Defaults to `default`
  final pulumi.Input<String>? ipamDriver;
  /// Provide explicit options to the IPAM driver. Valid options vary with `ipam_driver` and refer to that driver's documentation for more details.
  final pulumi.Input<Map<String, String>>? ipamOptions;
  /// Enable IPv6 networking. Defaults to `false`.
  final pulumi.Input<bool>? ipv6;
  /// User-defined key/value metadata
  final pulumi.Input<List<NetworkLabel>>? labels;
  /// The name of the Docker network.
  final pulumi.Input<String>? name;
  /// Only available with bridge networks. See [bridge options docs](https://docs.docker.com/engine/reference/commandline/network_create/#bridge-driver-options) for more details.
  final pulumi.Input<Map<String, String>>? options;
  /// Scope of the network. One of `swarm`, `global`, or `local`.
  final pulumi.Input<String>? scope;

  /// Creates a new [NetworkState].
  /// [attachable] Enable manual container attachment to the network.
  /// [checkDuplicate] Requests daemon to check for networks with same name.
  /// [driver] The driver of the Docker network. Possible values are `bridge`, `host`, `overlay`, `macvlan`. See [network docs](https://docs.docker.com/network/#network-drivers) for more details.
  /// [ingress] Create swarm routing-mesh network. Defaults to `false`.
  /// [internal] Whether the network is internal.
  /// [ipamConfigs] The IPAM configuration options
  /// [ipamDriver] Driver used by the custom IP scheme of the network. Defaults to `default`
  /// [ipamOptions] Provide explicit options to the IPAM driver. Valid options vary with `ipam_driver` and refer to that driver's documentation for more details.
  /// [ipv6] Enable IPv6 networking. Defaults to `false`.
  /// [labels] User-defined key/value metadata
  /// [name] The name of the Docker network.
  /// [options] Only available with bridge networks. See [bridge options docs](https://docs.docker.com/engine/reference/commandline/network_create/#bridge-driver-options) for more details.
  /// [scope] Scope of the network. One of `swarm`, `global`, or `local`.
  NetworkState({
    this.attachable,
    this.checkDuplicate,
    this.driver,
    this.ingress,
    this.internal,
    this.ipamConfigs,
    this.ipamDriver,
    this.ipamOptions,
    this.ipv6,
    this.labels,
    this.name,
    this.options,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachable': ?attachable,
      'checkDuplicate': ?checkDuplicate,
      'driver': ?driver,
      'ingress': ?ingress,
      'internal': ?internal,
      'ipamConfigs': ?pulumi.Input.mapOptionalInputValue<List<NetworkIpamConfig>, List<Map<String, dynamic>>>(ipamConfigs, (value) => pulumi.Input.encodeList<NetworkIpamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipamDriver': ?ipamDriver,
      'ipamOptions': ?ipamOptions,
      'ipv6': ?ipv6,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<NetworkLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<NetworkLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'options': ?options,
      'scope': ?scope,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      attachable: map['attachable'] == null ? null : (map['attachable'] as bool).input(),
      checkDuplicate: map['checkDuplicate'] == null ? null : (map['checkDuplicate'] as bool).input(),
      driver: map['driver'] == null ? null : (map['driver'] as String).input(),
      ingress: map['ingress'] == null ? null : (map['ingress'] as bool).input(),
      internal: map['internal'] == null ? null : (map['internal'] as bool).input(),
      ipamConfigs: map['ipamConfigs'] == null ? null : (pulumi.Input.decodeList<NetworkIpamConfig>(map['ipamConfigs'], (value) => NetworkIpamConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipamDriver: map['ipamDriver'] == null ? null : (map['ipamDriver'] as String).input(),
      ipamOptions: map['ipamOptions'] == null ? null : ((map['ipamOptions'] as Map).cast<String, String>()).input(),
      ipv6: map['ipv6'] == null ? null : (map['ipv6'] as bool).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<NetworkLabel>(map['labels'], (value) => NetworkLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      options: map['options'] == null ? null : ((map['options'] as Map).cast<String, String>()).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

