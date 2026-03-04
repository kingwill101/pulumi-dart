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
    this.codeRepositoryIndexId,
    this.createTime,
    this.effectiveLabels,
    this.forceDestroy,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.updateTime,
  });

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
      codeRepositoryIndexId: (() {
        final guardedValue = map['codeRepositoryIndexId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
