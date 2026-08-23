// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the file share configuration where the transport directory fileshare is created and mounted as a part of the create infra flow. Please pre-create the resource group you intend to place the transport directory in. The storage account and fileshare will be auto-created by the ACSS and doesn't need to be pre-created.
class CreateAndMountFileShareConfigurationResponse {
  /// The type of file share config.
  /// Expected value is 'CreateAndMount'.
  final pulumi.Input<String> configurationType;
  /// The name of transport file share resource group. This should be pre created by the customer. The app rg is used in case of missing input.
  final pulumi.Input<String>? resourceGroup;
  /// The name of file share storage account name . A custom name is used in case of missing input.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [CreateAndMountFileShareConfigurationResponse].
  /// [configurationType] The type of file share config.
  /// [resourceGroup] The name of transport file share resource group. This should be pre created by the customer. The app rg is used in case of missing input.
  /// [storageAccountName] The name of file share storage account name . A custom name is used in case of missing input.
  const CreateAndMountFileShareConfigurationResponse({
    required this.configurationType,
    this.resourceGroup,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': configurationType,
      'resourceGroup': ?resourceGroup,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory CreateAndMountFileShareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CreateAndMountFileShareConfigurationResponse(
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
