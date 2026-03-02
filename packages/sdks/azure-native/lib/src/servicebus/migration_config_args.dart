// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_migration_config_args_doc}
/// The set of arguments for MigrationConfig.
/// {@endtemplate}
/// {@macro pulumi_servicebus_migration_config_args_doc}
class MigrationConfigArgs {
  /// The configuration name. Should always be "$default".
  final pulumi.Input<String>? configName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Name to access Standard Namespace after migration
  final pulumi.Input<String> postMigrationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Existing premium Namespace ARM Id name which has no entities, will be used for migration
  final pulumi.Input<String> targetNamespace;

  /// Creates a new [MigrationConfigArgs].
  /// [configName] The configuration name. Should always be "$default".
  /// [namespaceName] The namespace name
  /// [postMigrationName] Name to access Standard Namespace after migration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetNamespace] Existing premium Namespace ARM Id name which has no entities, will be used for migration
  MigrationConfigArgs({
    this.configName,
    required this.namespaceName,
    required this.postMigrationName,
    required this.resourceGroupName,
    required this.targetNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configName': ?configName,
      'namespaceName': namespaceName,
      'postMigrationName': postMigrationName,
      'resourceGroupName': resourceGroupName,
      'targetNamespace': targetNamespace,
    };
  }

  factory MigrationConfigArgs.fromMap(Map<String, dynamic> map) {
    return MigrationConfigArgs(
      configName: map['configName'] == null ? null : (map['configName'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      postMigrationName: (map['postMigrationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      targetNamespace: (map['targetNamespace'] as String).input(),
    );
  }
}

