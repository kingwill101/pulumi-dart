// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_static_site_app_settings_args_doc}
/// Arguments for listStaticSiteAppSettings.
/// {@endtemplate}
/// {@macro pulumi_web_list_static_site_app_settings_args_doc}
class ListStaticSiteAppSettingsArgs {
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListStaticSiteAppSettingsArgs].
  /// [name] Name of the static site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListStaticSiteAppSettingsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListStaticSiteAppSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ListStaticSiteAppSettingsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
