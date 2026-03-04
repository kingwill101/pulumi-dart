// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_linked_backend_for_build_args_doc}
/// Arguments for getStaticSiteLinkedBackendForBuild.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_linked_backend_for_build_args_doc}
class GetStaticSiteLinkedBackendForBuildArgs {
  /// The stage site identifier
  final pulumi.Input<String> environmentName;

  /// Name of the linked backend that should be retrieved
  final pulumi.Input<String> linkedBackendName;

  /// Name of the static site
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteLinkedBackendForBuildArgs].
  /// [environmentName] The stage site identifier
  /// [linkedBackendName] Name of the linked backend that should be retrieved
  /// [name] Name of the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetStaticSiteLinkedBackendForBuildArgs({
    required this.environmentName,
    required this.linkedBackendName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'linkedBackendName': linkedBackendName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteLinkedBackendForBuildArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetStaticSiteLinkedBackendForBuildArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      linkedBackendName: pulumi.Input.fromValue(
        map['linkedBackendName'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
