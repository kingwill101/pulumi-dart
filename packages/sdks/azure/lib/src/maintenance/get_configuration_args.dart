// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_get_configuration_get_configuration_args_doc}
/// Arguments for getConfiguration.
/// {@endtemplate}
/// {@macro pulumi_maintenance_get_configuration_get_configuration_args_doc}
class GetConfigurationArgs {
  /// Specifies the name of the Maintenance Configuration.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where this Maintenance Configuration exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationArgs].
  /// [name] Specifies the name of the Maintenance Configuration.
  /// [resourceGroupName] Specifies the name of the Resource Group where this Maintenance Configuration exists.
  GetConfigurationArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

