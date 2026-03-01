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
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteBuildAppSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteBuildAppSettingsArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

