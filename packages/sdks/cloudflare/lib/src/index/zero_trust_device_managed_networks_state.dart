// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_managed_networks_config.dart';

/// Input properties used for looking up and filtering ZeroTrustDeviceManagedNetworks resources.
class ZeroTrustDeviceManagedNetworksState {
  final pulumi.Input<String?>? accountId;
  /// The configuration object containing information for the WARP client to detect the managed network.
  final pulumi.Input<ZeroTrustDeviceManagedNetworksConfig?>? config;
  /// The name of the device managed network. This name must be unique.
  final pulumi.Input<String?>? name;
  /// API UUID.
  final pulumi.Input<String?>? networkId;
  /// The type of device managed network.
  /// Available values: "tls".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZeroTrustDeviceManagedNetworksState].
  /// [accountId] Optional.
  /// [config] The configuration object containing information for the WARP client to detect the managed network.
  /// [name] The name of the device managed network. This name must be unique.
  /// [networkId] API UUID.
  /// [type] The type of device managed network.
  const ZeroTrustDeviceManagedNetworksState({
    this.accountId,
    this.config,
    this.name,
    this.networkId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceManagedNetworksConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'networkId': ?networkId,
      'type': ?type,
    };
  }

  factory ZeroTrustDeviceManagedNetworksState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceManagedNetworksState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceManagedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
