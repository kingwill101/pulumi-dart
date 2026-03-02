// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1_get_tag_args_doc}
/// Arguments for getTag.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1_get_tag_args_doc}
class GetTagArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> packageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> tagId;

  /// Creates a new [GetTagArgs].
  /// [location] Required.
  /// [packageId] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tagId] Required.
  GetTagArgs({
    required this.location,
    required this.packageId,
    this.project,
    required this.repositoryId,
    required this.tagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'packageId': packageId,
      'project': ?project,
      'repositoryId': repositoryId,
      'tagId': tagId,
    };
  }

  factory GetTagArgs.fromMap(Map<String, dynamic> map) {
    return GetTagArgs(
      location: (map['location'] as String).input(),
      packageId: (map['packageId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      repositoryId: (map['repositoryId'] as String).input(),
      tagId: (map['tagId'] as String).input(),
    );
  }
}

