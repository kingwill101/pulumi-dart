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
    required pulumi.Output<String> location,
    required pulumi.Output<String> packageId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
    required pulumi.Output<String> tagId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      packageId = pulumi.Input.asInput<String>(packageId),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      tagId = pulumi.Input.asInput<String>(tagId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      packageId: pulumi.Output.create<String>(map['packageId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      tagId: pulumi.Output.create<String>(map['tagId'] as String),
    );
  }
}

