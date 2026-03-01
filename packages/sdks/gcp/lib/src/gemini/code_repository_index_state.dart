// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CodeRepositoryIndex resources.
class CodeRepositoryIndexState {
  /// Required. Id of the Code Repository Index.
  final pulumi.Input<String>? codeRepositoryIndexId;
  /// Output only. Create time stamp.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  final pulumi.Input<bool>? forceDestroy;
  /// Optional. Immutable. Customer-managed encryption key name, in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? kmsKey;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the Code Repository Index, for example `us-central1`.
  final pulumi.Input<String>? location;
  /// Immutable. Identifier. Name of Code Repository Index.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. Code Repository Index instance State.
  /// Possible values are: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`, `SUSPENDED`.
  final pulumi.Input<String>? state;
  /// Output only. Update time stamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [CodeRepositoryIndexState].
  /// [codeRepositoryIndexId] Required. Id of the Code Repository Index.
  /// [createTime] Output only. Create time stamp.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDestroy] If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  /// [kmsKey] Optional. Immutable. Customer-managed encryption key name, in the format
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The location of the Code Repository Index, for example `us-central1`.
  /// [name] Immutable. Identifier. Name of Code Repository Index.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Output only. Code Repository Index instance State.
  /// [updateTime] Output only. Update time stamp.
  CodeRepositoryIndexState({
    pulumi.Output<String>? codeRepositoryIndexId,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      codeRepositoryIndexId = pulumi.Input.asOptionalInput<String>(codeRepositoryIndexId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositoryIndexId': ?codeRepositoryIndexId,
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory CodeRepositoryIndexState.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryIndexState(
      codeRepositoryIndexId: map['codeRepositoryIndexId'] == null ? null : pulumi.Output.create<String>(map['codeRepositoryIndexId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

