// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_migration_config_args_doc}
/// Arguments for getMigrationConfig.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_migration_config_args_doc}
class GetMigrationConfigArgs {
  /// The configuration name. Should always be "$default".
  final pulumi.Input<String> configName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMigrationConfigArgs].
  /// [configName] The configuration name. Should always be "$default".
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMigrationConfigArgs({
    required this.configName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configName': configName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMigrationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationConfigArgs(
      configName: pulumi.Input.fromValue(map['configName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
