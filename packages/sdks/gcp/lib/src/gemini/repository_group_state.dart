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
    this.codeRepositoryIndex,
    this.createTime,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.repositories,
    this.repositoryGroupId,
    this.updateTime,
  });

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
      codeRepositoryIndex: (() { final guardedValue = map['codeRepositoryIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryGroupRepository>(guardedValue, (value) => RepositoryGroupRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      repositoryGroupId: (() { final guardedValue = map['repositoryGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

