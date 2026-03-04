// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_get_configuration_store_get_configuration_store_args_doc}
/// Arguments for getConfigurationStore.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_get_configuration_store_get_configuration_store_args_doc}
class GetConfigurationStoreArgs {
  /// The Name of this App Configuration.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the App Configuration exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationStoreArgs].
  /// [name] The Name of this App Configuration.
  /// [resourceGroupName] The name of the Resource Group where the App Configuration exists.
  GetConfigurationStoreArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
