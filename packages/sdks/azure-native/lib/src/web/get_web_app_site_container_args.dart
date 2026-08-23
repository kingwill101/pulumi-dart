// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_site_container_args_doc}
/// Arguments for getWebAppSiteContainer.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_site_container_args_doc}
class GetWebAppSiteContainerArgs {
  /// Site Container Name
  final pulumi.Input<String> containerName;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppSiteContainerArgs].
  /// [containerName] Site Container Name
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppSiteContainerArgs({
    required this.containerName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppSiteContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteContainerArgs(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
