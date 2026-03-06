// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_linked_backend_for_build_args_doc}
/// The set of arguments for StaticSiteLinkedBackendForBuild.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_linked_backend_for_build_args_doc}
class StaticSiteLinkedBackendForBuildArgs {
  /// The resource id of the backend linked to the static site
  final pulumi.Input<String>? backendResourceId;
  /// The stage site identifier
  final pulumi.Input<String> environmentName;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the backend to link to the static site
  final pulumi.Input<String>? linkedBackendName;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The region of the backend linked to the static site
  final pulumi.Input<String>? region;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [StaticSiteLinkedBackendForBuildArgs].
  /// [backendResourceId] The resource id of the backend linked to the static site
  /// [environmentName] The stage site identifier
  /// [kind] Kind of resource.
  /// [linkedBackendName] Name of the backend to link to the static site
  /// [name] Name of the static site
  /// [region] The region of the backend linked to the static site
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  const StaticSiteLinkedBackendForBuildArgs({
    this.backendResourceId,
    required this.environmentName,
    this.kind,
    this.linkedBackendName,
    required this.name,
    this.region,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendResourceId': ?backendResourceId,
      'environmentName': environmentName,
      'kind': ?kind,
      'linkedBackendName': ?linkedBackendName,
      'name': name,
      'region': ?region,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory StaticSiteLinkedBackendForBuildArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteLinkedBackendForBuildArgs(
      backendResourceId: (() { final guardedValue = map['backendResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedBackendName: (() { final guardedValue = map['linkedBackendName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

