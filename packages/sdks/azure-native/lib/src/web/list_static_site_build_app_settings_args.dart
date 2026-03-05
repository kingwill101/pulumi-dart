// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_build_app_settings_args_doc}
/// Arguments for listStaticSiteBuildAppSettings.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_build_app_settings_args_doc}
class ListStaticSiteBuildAppSettingsArgs {
  /// The stage site identifier.
  final pulumi.Input<String> environmentName;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteBuildAppSettingsArgs].
  /// [environmentName] The stage site identifier.
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListStaticSiteBuildAppSettingsArgs({
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

  factory ListStaticSiteBuildAppSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteBuildAppSettingsArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

