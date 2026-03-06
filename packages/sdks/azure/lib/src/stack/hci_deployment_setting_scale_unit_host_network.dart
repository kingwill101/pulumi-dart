// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_scale_unit_host_network_intent.dart';
import 'hci_deployment_setting_scale_unit_host_network_storage_network.dart';

class HciDeploymentSettingScaleUnitHostNetwork {
  /// One or more `intent` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<HciDeploymentSettingScaleUnitHostNetworkIntent>> intents;
  /// Whether allows users to specify IPs and Mask for Storage NICs when Network ATC is not assigning the IPs for storage automatically. Optional parameter required only for [3 nodes switchless deployments](https://learn.microsoft.com/azure-stack/hci/concepts/physical-network-requirements?tabs=overview%2C23H2reqs#using-switchless). Possible values are `true` and `false`. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? storageAutoIpEnabled;
  /// Defines how the storage adapters between nodes are connected either switch or switch less. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<bool>? storageConnectivitySwitchlessEnabled;
  /// One or more `storage_network` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<HciDeploymentSettingScaleUnitHostNetworkStorageNetwork>> storageNetworks;

  /// Creates a new [HciDeploymentSettingScaleUnitHostNetwork].
  /// [intents] One or more `intent` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [storageAutoIpEnabled] Whether allows users to specify IPs and Mask for Storage NICs when Network ATC is not assigning the IPs for storage automatically. Optional parameter required only for [3 nodes switchless deployments](https://learn.microsoft.com/azure-stack/hci/concepts/physical-network-requirements?tabs=overview%2C23H2reqs#using-switchless). Possible values are `true` and `false`. Defaults to `true`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [storageConnectivitySwitchlessEnabled] Defines how the storage adapters between nodes are connected either switch or switch less. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [storageNetworks] One or more `storage_network` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  const HciDeploymentSettingScaleUnitHostNetwork({
    required this.intents,
    this.storageAutoIpEnabled,
    this.storageConnectivitySwitchlessEnabled,
    required this.storageNetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intents': pulumi.Input.mapInputValue<List<HciDeploymentSettingScaleUnitHostNetworkIntent>, List<Map<String, dynamic>>>(intents, (value) => pulumi.Input.encodeList<HciDeploymentSettingScaleUnitHostNetworkIntent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAutoIpEnabled': ?storageAutoIpEnabled,
      'storageConnectivitySwitchlessEnabled': ?storageConnectivitySwitchlessEnabled,
      'storageNetworks': pulumi.Input.mapInputValue<List<HciDeploymentSettingScaleUnitHostNetworkStorageNetwork>, List<Map<String, dynamic>>>(storageNetworks, (value) => pulumi.Input.encodeList<HciDeploymentSettingScaleUnitHostNetworkStorageNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HciDeploymentSettingScaleUnitHostNetwork.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitHostNetwork(
      intents: pulumi.Input.fromValue(pulumi.Input.decodeList<HciDeploymentSettingScaleUnitHostNetworkIntent>(map['intents']!, (value) => HciDeploymentSettingScaleUnitHostNetworkIntent.fromMap((value as Map).cast<String, dynamic>()))),
      storageAutoIpEnabled: (() { final guardedValue = map['storageAutoIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageConnectivitySwitchlessEnabled: (() { final guardedValue = map['storageConnectivitySwitchlessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageNetworks: pulumi.Input.fromValue(pulumi.Input.decodeList<HciDeploymentSettingScaleUnitHostNetworkStorageNetwork>(map['storageNetworks']!, (value) => HciDeploymentSettingScaleUnitHostNetworkStorageNetwork.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

