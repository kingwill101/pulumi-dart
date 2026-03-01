// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_group_repository.dart';

/// Input properties used for looking up and filtering RepositoryGroup resources.
class RepositoryGroupState {
  /// Required. Id of the Code Repository Index.
  final pulumi.Input<String>? codeRepositoryIndex;
  /// Output only. Create time stamp.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the Code Repository Index, for example `us-central1`.
  final pulumi.Input<String>? location;
  /// Immutable. Identifier. Name of Repository Group.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Required. List of repositories to group.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryGroupRepository>>? repositories;
  /// Required. Id of the Repository Group.
  final pulumi.Input<String>? repositoryGroupId;
  /// Output only. Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RepositoryGroupState].
  /// [codeRepositoryIndex] Required. Id of the Code Repository Index.
  /// [createTime] Output only. Create time stamp.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The location of the Code Repository Index, for example `us-central1`.
  /// [name] Immutable. Identifier. Name of Repository Group.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [repositories] Required. List of repositories to group.
  /// [repositoryGroupId] Required. Id of the Repository Group.
  /// [updateTime] Output only. Update time stamp.
  RepositoryGroupState({
    pulumi.Output<String>? codeRepositoryIndex,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<RepositoryGroupRepository>>? repositories,
    pulumi.Output<String>? repositoryGroupId,
    pulumi.Output<String>? updateTime,
  }) :
      codeRepositoryIndex = pulumi.Input.asOptionalInput<String>(codeRepositoryIndex),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      repositories = pulumi.Input.asOptionalInput<List<RepositoryGroupRepository>>(repositories),
      repositoryGroupId = pulumi.Input.asOptionalInput<String>(repositoryGroupId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositoryIndex': ?codeRepositoryIndex,
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<RepositoryGroupRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<RepositoryGroupRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'repositoryGroupId': ?repositoryGroupId,
      'updateTime': ?updateTime,
    };
  }

  factory RepositoryGroupState.fromMap(Map<String, dynamic> map) {
    return RepositoryGroupState(
      codeRepositoryIndex: map['codeRepositoryIndex'] == null ? null : pulumi.Output.create<String>(map['codeRepositoryIndex'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      repositories: map['repositories'] == null ? null : pulumi.Output.create<List<RepositoryGroupRepository>>(pulumi.Input.decodeList<RepositoryGroupRepository>(map['repositories'], (value) => RepositoryGroupRepository.fromMap((value as Map).cast<String, dynamic>()))),
      repositoryGroupId: map['repositoryGroupId'] == null ? null : pulumi.Output.create<String>(map['repositoryGroupId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

