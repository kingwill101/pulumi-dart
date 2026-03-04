// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_function_app_settings_args_doc}
/// Arguments for listStaticSiteFunctionAppSettings.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_function_app_settings_args_doc}
class ListStaticSiteFunctionAppSettingsArgs {
  /// Name of the static site.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteFunctionAppSettingsArgs].
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListStaticSiteFunctionAppSettingsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteFunctionAppSettingsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListStaticSiteFunctionAppSettingsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
