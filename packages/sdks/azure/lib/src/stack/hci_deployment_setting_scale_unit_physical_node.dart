// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciDeploymentSettingScaleUnitPhysicalNode {
  /// Specifies the IPv4 address assigned to each physical server on your Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> ipv4Address;

  /// The NETBIOS name of each physical server on your Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> name;

  /// Creates a new [HciDeploymentSettingScaleUnitPhysicalNode].
  /// [ipv4Address] Specifies the IPv4 address assigned to each physical server on your Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [name] The NETBIOS name of each physical server on your Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitPhysicalNode({
    required this.ipv4Address,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv4Address': ipv4Address, 'name': name};
  }

  factory HciDeploymentSettingScaleUnitPhysicalNode.fromMap(
    Map<String, dynamic> map,
  ) {
    return HciDeploymentSettingScaleUnitPhysicalNode(
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
