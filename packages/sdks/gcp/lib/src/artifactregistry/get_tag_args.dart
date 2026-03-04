// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_tag_get_tag_args_doc}
/// Arguments for getTag.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_tag_get_tag_args_doc}
class GetTagArgs {
  /// The location of the artifact registry.
  final pulumi.Input<String> location;

  /// The name of the package.
  final pulumi.Input<String> packageName;

  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// The name of the tag.
  final pulumi.Input<String> tagName;

  /// Creates a new [GetTagArgs].
  /// [location] The location of the artifact registry.
  /// [packageName] The name of the package.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  /// [tagName] The name of the tag.
  GetTagArgs({
    required this.location,
    required this.packageName,
    this.project,
    required this.repositoryId,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'packageName': packageName,
      'project': ?project,
      'repositoryId': repositoryId,
      'tagName': tagName,
    };
  }

  factory GetTagArgs.fromMap(Map<String, dynamic> map) {
    return GetTagArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
