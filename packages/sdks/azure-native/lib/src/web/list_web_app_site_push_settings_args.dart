// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_site_push_settings_args_doc}
/// Arguments for listWebAppSitePushSettings.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_site_push_settings_args_doc}
class ListWebAppSitePushSettingsArgs {
  /// Name of web app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppSitePushSettingsArgs].
  /// [name] Name of web app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListWebAppSitePushSettingsArgs({
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
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

