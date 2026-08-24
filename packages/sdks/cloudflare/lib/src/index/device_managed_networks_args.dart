// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_managed_networks_config.dart';

/// {@template pulumi_index_device_managed_networks_device_managed_networks_args_doc}
/// The set of arguments for DeviceManagedNetworks.
/// {@endtemplate}
/// {@macro pulumi_index_device_managed_networks_device_managed_networks_args_doc}
class DeviceManagedNetworksArgs {
  final pulumi.Input<String> accountId;
  /// The configuration object containing information for the WARP client to detect the managed network.
  final pulumi.Input<DeviceManagedNetworksConfig> config;
  /// The name of the device managed network. This name must be unique.
  final pulumi.Input<String> name;
  /// The type of device managed network.
  /// Available values: "tls".
  final pulumi.Input<String> type;

  /// Creates a new [DeviceManagedNetworksArgs].
  /// [accountId] Required.
  /// [config] The configuration object containing information for the WARP client to detect the managed network.
  /// [name] The name of the device managed network. This name must be unique.
  /// [type] The type of device managed network.
  const DeviceManagedNetworksArgs({
    required this.accountId,
    required this.config,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': pulumi.Input.mapInputValue<DeviceManagedNetworksConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': name,
      'type': type,
    };
  }

  factory DeviceManagedNetworksArgs.fromMap(Map<String, dynamic> map) {
    return DeviceManagedNetworksArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      config: pulumi.Input.fromValue(DeviceManagedNetworksConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
