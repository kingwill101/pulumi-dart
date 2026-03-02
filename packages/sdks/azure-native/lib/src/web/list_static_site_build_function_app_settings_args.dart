// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_build_function_app_settings_args_doc}
/// Arguments for listStaticSiteBuildFunctionAppSettings.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_build_function_app_settings_args_doc}
class ListStaticSiteBuildFunctionAppSettingsArgs {
  /// The stage site identifier.
  final pulumi.Input<String> environmentName;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteBuildFunctionAppSettingsArgs].
  /// [environmentName] The stage site identifier.
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListStaticSiteBuildFunctionAppSettingsArgs({
    required this.environmentName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteBuildFunctionAppSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteBuildFunctionAppSettingsArgs(
      environmentName: (map['environmentName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

