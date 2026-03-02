// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_azure_versions_get_azure_versions_args_doc}
/// Arguments for getAzureVersions.
/// {@endtemplate}
/// {@macro pulumi_container_get_azure_versions_get_azure_versions_args_doc}
class GetAzureVersionsArgs {
  /// The location to list versions for.
  final pulumi.Input<String>? location;
  /// ID of the project to list available cluster versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAzureVersionsArgs].
  /// [location] The location to list versions for.
  /// [project] ID of the project to list available cluster versions for. Should match the project the cluster will be deployed to.
  GetAzureVersionsArgs({
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetAzureVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureVersionsArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

