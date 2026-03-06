// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationsmanagement_get_management_configuration_args_doc}
/// Arguments for getManagementConfiguration.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_get_management_configuration_args_doc}
class GetManagementConfigurationArgs {
  /// User Management Configuration Name.
  final pulumi.Input<String> managementConfigurationName;
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagementConfigurationArgs].
  /// [managementConfigurationName] User Management Configuration Name.
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  const GetManagementConfigurationArgs({
    required this.managementConfigurationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementConfigurationName': managementConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagementConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementConfigurationArgs(
      managementConfigurationName: pulumi.Input.fromValue(map['managementConfigurationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

