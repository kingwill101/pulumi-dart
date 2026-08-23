// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_site_extension_args_doc}
/// Arguments for getWebAppSiteExtension.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_site_extension_args_doc}
class GetWebAppSiteExtensionArgs {
  /// Site name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site extension name.
  final pulumi.Input<String> siteExtensionId;

  /// Creates a new [GetWebAppSiteExtensionArgs].
  /// [name] Site name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteExtensionId] Site extension name.
  const GetWebAppSiteExtensionArgs({
    required this.name,
    required this.resourceGroupName,
    required this.siteExtensionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'siteExtensionId': siteExtensionId,
    };
  }

  factory GetWebAppSiteExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteExtensionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteExtensionId: pulumi.Input.fromValue(map['siteExtensionId'] as String),
    );
  }
}
