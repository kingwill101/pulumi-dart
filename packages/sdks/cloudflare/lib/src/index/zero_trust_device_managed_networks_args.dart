// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_managed_networks_config.dart';

/// {@template pulumi_index_zero_trust_device_managed_networks_zero_trust_device_managed_networks_args_doc}
/// The set of arguments for ZeroTrustDeviceManagedNetworks.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_device_managed_networks_zero_trust_device_managed_networks_args_doc}
class ZeroTrustDeviceManagedNetworksArgs {
  final pulumi.Input<String> accountId;
  /// The configuration object containing information for the WARP client to detect the managed network.
  final pulumi.Input<ZeroTrustDeviceManagedNetworksConfig> config;
  /// The name of the device managed network. This name must be unique.
  final pulumi.Input<String> name;
  /// The type of device managed network.
  /// Available values: "tls".
  final pulumi.Input<String> type;

  /// Creates a new [ZeroTrustDeviceManagedNetworksArgs].
  /// [accountId] Required.
  /// [config] The configuration object containing information for the WARP client to detect the managed network.
  /// [name] The name of the device managed network. This name must be unique.
  /// [type] The type of device managed network.
  const ZeroTrustDeviceManagedNetworksArgs({
    required this.accountId,
    required this.config,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': pulumi.Input.mapInputValue<ZeroTrustDeviceManagedNetworksConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': name,
      'type': type,
    };
  }

  factory ZeroTrustDeviceManagedNetworksArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceManagedNetworksArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      config: pulumi.Input.fromValue(ZeroTrustDeviceManagedNetworksConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
