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
  GetManagementConfigurationArgs({
    required pulumi.Output<String> managementConfigurationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      managementConfigurationName = pulumi.Input.asInput<String>(managementConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementConfigurationName': managementConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagementConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementConfigurationArgs(
      managementConfigurationName: pulumi.Output.create<String>(map['managementConfigurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

