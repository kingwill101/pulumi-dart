// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_ipam_config.dart';
import 'network_label.dart';

/// {@template pulumi_index_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_index_network_network_args_doc}
class NetworkArgs {
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

  /// Creates a new [NetworkArgs].
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
  NetworkArgs({
    pulumi.Output<bool>? attachable,
    pulumi.Output<bool>? checkDuplicate,
    pulumi.Output<String>? driver,
    pulumi.Output<bool>? ingress,
    pulumi.Output<bool>? internal,
    pulumi.Output<List<NetworkIpamConfig>>? ipamConfigs,
    pulumi.Output<String>? ipamDriver,
    pulumi.Output<Map<String, String>>? ipamOptions,
    pulumi.Output<bool>? ipv6,
    pulumi.Output<List<NetworkLabel>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? options,
  }) :
      attachable = pulumi.Input.asOptionalInput<bool>(attachable),
      checkDuplicate = pulumi.Input.asOptionalInput<bool>(checkDuplicate),
      driver = pulumi.Input.asOptionalInput<String>(driver),
      ingress = pulumi.Input.asOptionalInput<bool>(ingress),
      internal = pulumi.Input.asOptionalInput<bool>(internal),
      ipamConfigs = pulumi.Input.asOptionalInput<List<NetworkIpamConfig>>(ipamConfigs),
      ipamDriver = pulumi.Input.asOptionalInput<String>(ipamDriver),
      ipamOptions = pulumi.Input.asOptionalInput<Map<String, String>>(ipamOptions),
      ipv6 = pulumi.Input.asOptionalInput<bool>(ipv6),
      labels = pulumi.Input.asOptionalInput<List<NetworkLabel>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      options = pulumi.Input.asOptionalInput<Map<String, String>>(options);

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
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      attachable: map['attachable'] == null ? null : pulumi.Output.create<bool>(map['attachable'] as bool),
      checkDuplicate: map['checkDuplicate'] == null ? null : pulumi.Output.create<bool>(map['checkDuplicate'] as bool),
      driver: map['driver'] == null ? null : pulumi.Output.create<String>(map['driver'] as String),
      ingress: map['ingress'] == null ? null : pulumi.Output.create<bool>(map['ingress'] as bool),
      internal: map['internal'] == null ? null : pulumi.Output.create<bool>(map['internal'] as bool),
      ipamConfigs: map['ipamConfigs'] == null ? null : pulumi.Output.create<List<NetworkIpamConfig>>(pulumi.Input.decodeList<NetworkIpamConfig>(map['ipamConfigs'], (value) => NetworkIpamConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ipamDriver: map['ipamDriver'] == null ? null : pulumi.Output.create<String>(map['ipamDriver'] as String),
      ipamOptions: map['ipamOptions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['ipamOptions'] as Map).cast<String, String>()),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<bool>(map['ipv6'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<NetworkLabel>>(pulumi.Input.decodeList<NetworkLabel>(map['labels'], (value) => NetworkLabel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<Map<String, String>>((map['options'] as Map).cast<String, String>()),
    );
  }
}

