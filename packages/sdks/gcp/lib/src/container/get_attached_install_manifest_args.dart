// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_attached_install_manifest_get_attached_install_manifest_args_doc}
/// Arguments for getAttachedInstallManifest.
/// {@endtemplate}
/// {@macro pulumi_container_get_attached_install_manifest_get_attached_install_manifest_args_doc}
class GetAttachedInstallManifestArgs {
  /// The name that will be used when creating the attached cluster resource.
  final pulumi.Input<String> clusterId;
  /// The location to list versions for.
  final pulumi.Input<String> location;
  /// The platform version for the cluster. A list of valid values can be retrieved using the `gcp.container.getAttachedVersions` data source.
  final pulumi.Input<String> platformVersion;
  /// ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String> project;

  /// Creates a new [GetAttachedInstallManifestArgs].
  /// [clusterId] The name that will be used when creating the attached cluster resource.
  /// [location] The location to list versions for.
  /// [platformVersion] The platform version for the cluster. A list of valid values can be retrieved using the `gcp.container.getAttachedVersions` data source.
  /// [project] ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  GetAttachedInstallManifestArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> platformVersion,
    required pulumi.Output<String> project,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      location = pulumi.Input.asInput<String>(location),
      platformVersion = pulumi.Input.asInput<String>(platformVersion),
      project = pulumi.Input.asInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'platformVersion': platformVersion,
      'project': project,
    };
  }

  factory GetAttachedInstallManifestArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedInstallManifestArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      platformVersion: pulumi.Output.create<String>(map['platformVersion'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

