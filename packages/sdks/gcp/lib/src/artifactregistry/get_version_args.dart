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
  const GetVersionArgs({
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.versionName,
    this.view,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
