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
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> functionAppName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      functionAppName = pulumi.Input.asInput<String>(functionAppName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      functionAppName: pulumi.Output.create<String>(map['functionAppName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

