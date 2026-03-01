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
    required pulumi.Output<String> containerName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      containerName = pulumi.Input.asInput<String>(containerName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppSiteContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSiteContainerArgs(
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

