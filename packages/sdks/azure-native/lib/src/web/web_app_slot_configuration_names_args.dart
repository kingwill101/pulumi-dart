// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_slot_configuration_names_args_doc}
/// The set of arguments for WebAppSlotConfigurationNames.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_slot_configuration_names_args_doc}
class WebAppSlotConfigurationNamesArgs {
  /// List of application settings names.
  final pulumi.Input<List<String>>? appSettingNames;
  /// List of external Azure storage account identifiers.
  final pulumi.Input<List<String>>? azureStorageConfigNames;
  /// List of connection string names.
  final pulumi.Input<List<String>>? connectionStringNames;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppSlotConfigurationNamesArgs].
  /// [appSettingNames] List of application settings names.
  /// [azureStorageConfigNames] List of external Azure storage account identifiers.
  /// [connectionStringNames] List of connection string names.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppSlotConfigurationNamesArgs({
    this.appSettingNames,
    this.azureStorageConfigNames,
    this.connectionStringNames,
    this.kind,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': ?appSettingNames,
      'azureStorageConfigNames': ?azureStorageConfigNames,
      'connectionStringNames': ?connectionStringNames,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppSlotConfigurationNamesArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSlotConfigurationNamesArgs(
      appSettingNames: map['appSettingNames'] == null ? null : ((map['appSettingNames'] as List).cast<String>()).input(),
      azureStorageConfigNames: map['azureStorageConfigNames'] == null ? null : ((map['azureStorageConfigNames'] as List).cast<String>()).input(),
      connectionStringNames: map['connectionStringNames'] == null ? null : ((map['connectionStringNames'] as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

