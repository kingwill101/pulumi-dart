// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_web_app_sites_controller_args_doc}
/// Arguments for getWebAppSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_web_app_sites_controller_args_doc}
class GetWebAppSitesControllerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// Web app site name.
  final pulumi.Input<String> webAppSiteName;

  /// Creates a new [GetWebAppSitesControllerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [webAppSiteName] Web app site name.
  GetWebAppSitesControllerArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
    required pulumi.Output<String> webAppSiteName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      webAppSiteName = pulumi.Input.asInput<String>(webAppSiteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'webAppSiteName': webAppSiteName,
    };
  }

  factory GetWebAppSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSitesControllerArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
      webAppSiteName: pulumi.Output.create<String>(map['webAppSiteName'] as String),
    );
  }
}

