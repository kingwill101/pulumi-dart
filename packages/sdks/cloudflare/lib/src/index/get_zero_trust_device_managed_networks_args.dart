// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_managed_networks_get_zero_trust_device_managed_networks_args_doc}
/// Arguments for getZeroTrustDeviceManagedNetworks.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_managed_networks_get_zero_trust_device_managed_networks_args_doc}
class GetZeroTrustDeviceManagedNetworksArgs {
  final pulumi.Input<String?>? accountId;
  /// API UUID.
  final pulumi.Input<String> networkId;

  /// Creates a new [GetZeroTrustDeviceManagedNetworksArgs].
  /// [accountId] Optional.
  /// [networkId] API UUID.
  const GetZeroTrustDeviceManagedNetworksArgs({
    this.accountId,
    required this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'networkId': networkId,
    };
  }

  factory GetZeroTrustDeviceManagedNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceManagedNetworksArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
    );
  }
}
