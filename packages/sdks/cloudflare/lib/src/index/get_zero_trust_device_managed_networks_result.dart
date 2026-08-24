// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_device_managed_networks_config.dart';

/// Result data returned by getZeroTrustDeviceManagedNetworks.
class GetZeroTrustDeviceManagedNetworksResult {
  final String? accountId;
  /// The configuration object containing information for the WARP client to detect the managed network.
  final GetZeroTrustDeviceManagedNetworksConfig? config;
  /// API UUID.
  final String? id;
  /// The name of the device managed network. This name must be unique.
  final String? name;
  /// API UUID.
  final String? networkId;
  /// The type of device managed network.
  /// Available values: "tls".
  final String? type;

  /// Creates a new [GetZeroTrustDeviceManagedNetworksResult].
  /// [accountId] Optional.
  /// [config] The configuration object containing information for the WARP client to detect the managed network.
  /// [id] API UUID.
  /// [name] The name of the device managed network. This name must be unique.
  /// [networkId] API UUID.
  /// [type] The type of device managed network.
  const GetZeroTrustDeviceManagedNetworksResult({
    this.accountId,
    this.config,
    this.id,
    this.name,
    this.networkId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?config?.toMap(),
      'id': ?id,
      'name': ?name,
      'networkId': ?networkId,
      'type': ?type,
    };
  }

  factory GetZeroTrustDeviceManagedNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceManagedNetworksResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return GetZeroTrustDeviceManagedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
