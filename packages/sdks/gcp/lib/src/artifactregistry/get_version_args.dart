// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_version_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_version_get_version_args_doc}
class GetVersionArgs {
  /// The location of the artifact registry.
  final pulumi.Input<String> location;
  /// The name of the package.
  final pulumi.Input<String> packageName;
  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;
  /// The name of the version.
  final pulumi.Input<String> versionName;
  /// The view, which determines what version information is returned in a response. Possible values are `"BASIC"` and `"FULL"`. Defaults to `"BASIC"`.
  final pulumi.Input<String>? view;

  /// Creates a new [GetVersionArgs].
  /// [location] The location of the artifact registry.
  /// [packageName] The name of the package.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  /// [versionName] The name of the version.
  /// [view] The view, which determines what version information is returned in a response. Possible values are `"BASIC"` and `"FULL"`. Defaults to `"BASIC"`.
  GetVersionArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> packageName,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
    required pulumi.Output<String> versionName,
    pulumi.Output<String>? view,
  }) :
      location = pulumi.Input.asInput<String>(location),
      packageName = pulumi.Input.asInput<String>(packageName),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      versionName = pulumi.Input.asInput<String>(versionName),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
      'versionName': versionName,
      'view': ?view,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      packageName: pulumi.Output.create<String>(map['packageName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      versionName: pulumi.Output.create<String>(map['versionName'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

