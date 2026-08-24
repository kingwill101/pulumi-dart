// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_managed_networks_list_result_config.dart';

class GetZeroTrustDeviceManagedNetworksListResult {
  /// The configuration object containing information for the WARP client to detect the managed network.
  final pulumi.Input<GetZeroTrustDeviceManagedNetworksListResultConfig> config;
  /// API UUID.
  final pulumi.Input<String> id;
  /// The name of the device managed network. This name must be unique.
  final pulumi.Input<String> name;
  /// API UUID.
  final pulumi.Input<String> networkId;
  /// The type of device managed network.
  /// Available values: "tls".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustDeviceManagedNetworksListResult].
  /// [config] The configuration object containing information for the WARP client to detect the managed network.
  /// [id] API UUID.
  /// [name] The name of the device managed network. This name must be unique.
  /// [networkId] API UUID.
  /// [type] The type of device managed network.
  const GetZeroTrustDeviceManagedNetworksListResult({
    required this.config,
    required this.id,
    required this.name,
    required this.networkId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetZeroTrustDeviceManagedNetworksListResultConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'id': id,
      'name': name,
      'networkId': networkId,
      'type': type,
    };
  }

  factory GetZeroTrustDeviceManagedNetworksListResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceManagedNetworksListResult(
      config: pulumi.Input.fromValue(GetZeroTrustDeviceManagedNetworksListResultConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
