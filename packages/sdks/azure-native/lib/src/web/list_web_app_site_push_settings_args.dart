// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_site_push_settings_args_doc}
/// Arguments for listWebAppSitePushSettings.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_site_push_settings_args_doc}
class ListWebAppSitePushSettingsArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppSitePushSettingsArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListWebAppSitePushSettingsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppSitePushSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppSitePushSettingsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
