// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciDeploymentSettingScaleUnitCluster {
  /// Specifies the Azure blob service endpoint, for example, `core.windows.net`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> azureServiceEndpoint;
  /// Specifies the Azure Storage account name of the cloud witness for the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> cloudAccountName;
  /// Specifies the name of the cluster. It must be 3-15 characters long and contain only letters, numbers and hyphens. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> name;
  /// Specifies the fileshare path of the local witness for the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> witnessPath;
  /// Specifies the type of the witness. Possible values are `Cloud`, `FileShare`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> witnessType;

  /// Creates a new [HciDeploymentSettingScaleUnitCluster].
  /// [azureServiceEndpoint] Specifies the Azure blob service endpoint, for example, `core.windows.net`. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [cloudAccountName] Specifies the Azure Storage account name of the cloud witness for the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [name] Specifies the name of the cluster. It must be 3-15 characters long and contain only letters, numbers and hyphens. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [witnessPath] Specifies the fileshare path of the local witness for the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [witnessType] Specifies the type of the witness. Possible values are `Cloud`, `FileShare`. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingScaleUnitCluster({
    required this.azureServiceEndpoint,
    required this.cloudAccountName,
    required this.name,
    required this.witnessPath,
    required this.witnessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureServiceEndpoint': azureServiceEndpoint,
      'cloudAccountName': cloudAccountName,
      'name': name,
      'witnessPath': witnessPath,
      'witnessType': witnessType,
    };
  }

  factory HciDeploymentSettingScaleUnitCluster.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingScaleUnitCluster(
      azureServiceEndpoint: (map['azureServiceEndpoint'] as String).input(),
      cloudAccountName: (map['cloudAccountName'] as String).input(),
      name: (map['name'] as String).input(),
      witnessPath: (map['witnessPath'] as String).input(),
      witnessType: (map['witnessType'] as String).input(),
    );
  }
}

