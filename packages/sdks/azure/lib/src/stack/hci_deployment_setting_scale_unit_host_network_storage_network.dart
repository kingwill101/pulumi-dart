// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciDeploymentSettingScaleUnitHostNetworkStorageNetwork {
  /// The name of the storage network. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> name;
  /// The name of the network adapter. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> networkAdapterName;
  /// Specifies the ID for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> vlanId;

  /// Creates a new [HciDeploymentSettingScaleUnitHostNetworkStorageNetwork].
  /// [name] The name of the storage network. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [networkAdapterName] The name of the network adapter. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [vlanId] Specifies the ID for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitHostNetworkStorageNetwork({
    required this.name,
    required this.networkAdapterName,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkAdapterName': networkAdapterName,
      'vlanId': vlanId,
    };
  }

  factory HciDeploymentSettingScaleUnitHostNetworkStorageNetwork.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitHostNetworkStorageNetwork(
      name: pulumi.Input.fromValue(map['name'] as String),
      networkAdapterName: pulumi.Input.fromValue(map['networkAdapterName'] as String),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as String),
    );
  }
}

