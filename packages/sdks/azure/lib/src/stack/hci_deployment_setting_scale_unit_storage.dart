// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciDeploymentSettingScaleUnitStorage {
  /// The configuration mode of storage. If set to `Express` and your storage is configured as per best practices based on the number of nodes in the cluster. Possible values are `Express`, `InfraOnly` and `KeepStorage`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> configurationMode;

  /// Creates a new [HciDeploymentSettingScaleUnitStorage].
  /// [configurationMode] The configuration mode of storage. If set to `Express` and your storage is configured as per best practices based on the number of nodes in the cluster. Possible values are `Express`, `InfraOnly` and `KeepStorage`. Changing this forces a new Stack HCI Deployment Setting to be created.
  const HciDeploymentSettingScaleUnitStorage({
    required this.configurationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationMode': configurationMode,
    };
  }

  factory HciDeploymentSettingScaleUnitStorage.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitStorage(
      configurationMode: pulumi.Input.fromValue(map['configurationMode'] as String),
    );
  }
}
