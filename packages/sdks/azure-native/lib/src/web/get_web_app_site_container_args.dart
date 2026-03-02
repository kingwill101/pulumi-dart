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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppSiteContainerArgs].
  /// [containerName] Site Container Name
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppSiteContainerArgs({
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
      containerName: (map['containerName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

