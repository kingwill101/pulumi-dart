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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachable': ?attachable,
      'checkDuplicate': ?checkDuplicate,
      'driver': ?driver,
      'ingress': ?ingress,
      'internal': ?internal,
      'ipamConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkIpamConfig>,
            List<Map<String, dynamic>>
          >(
            ipamConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkIpamConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipamDriver': ?ipamDriver,
      'ipamOptions': ?ipamOptions,
      'ipv6': ?ipv6,
      'labels':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkLabel>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<NetworkLabel, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': ?name,
      'options': ?options,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      attachable: (() {
        final guardedValue = map['attachable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      checkDuplicate: (() {
        final guardedValue = map['checkDuplicate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      driver: (() {
        final guardedValue = map['driver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingress: (() {
        final guardedValue = map['ingress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      internal: (() {
        final guardedValue = map['internal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipamConfigs: (() {
        final guardedValue = map['ipamConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkIpamConfig>(
            guardedValue,
            (value) => NetworkIpamConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ipamDriver: (() {
        final guardedValue = map['ipamDriver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamOptions: (() {
        final guardedValue = map['ipamOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      ipv6: (() {
        final guardedValue = map['ipv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkLabel>(
            guardedValue,
            (value) =>
                NetworkLabel.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
