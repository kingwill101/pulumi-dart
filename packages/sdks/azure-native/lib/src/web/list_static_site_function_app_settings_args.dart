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
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteFunctionAppSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteFunctionAppSettingsArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

