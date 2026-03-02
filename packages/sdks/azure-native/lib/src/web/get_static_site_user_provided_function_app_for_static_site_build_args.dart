// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_user_provided_function_app_for_static_site_build_args_doc}
/// Arguments for getStaticSiteUserProvidedFunctionAppForStaticSiteBuild.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_user_provided_function_app_for_static_site_build_args_doc}
class GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs {
  /// The stage site identifier.
  final pulumi.Input<String> environmentName;
  /// Name of the function app registered with the static site build.
  final pulumi.Input<String> functionAppName;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs].
  /// [environmentName] The stage site identifier.
  /// [functionAppName] Name of the function app registered with the static site build.
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs({
    required this.environmentName,
    required this.functionAppName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'functionAppName': functionAppName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs(
      environmentName: (map['environmentName'] as String).input(),
      functionAppName: (map['functionAppName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

