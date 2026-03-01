// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_access_scope_allowed_data_access_label.dart';
import 'data_access_scope_denied_data_access_label.dart';

/// Input properties used for looking up and filtering DataAccessScope resources.
class DataAccessScopeState {
  /// Optional. Whether or not the scope allows all labels, allow_all and
  /// allowed_data_access_labels are mutually exclusive and one of them must be
  /// present. denied_data_access_labels can still be used along with allow_all.
  /// When combined with denied_data_access_labels, access will be granted to all
  /// data that doesn't have labels mentioned in denied_data_access_labels. E.g.:
  /// A customer with scope with denied labels A and B and allow_all will be able
  /// to see all data except data labeled with A and data labeled with B and data
  /// with labels A and B.
  final pulumi.Input<bool>? allowAll;
  /// The allowed labels for the scope. There has to be at
  /// least one label allowed for the scope to be valid.
  /// The logical operator for evaluation of the allowed labels is OR.
  /// Either allow_all or allowed_data_access_labels needs to be provided.
  /// E.g.: A customer with scope with allowed labels A and B will be able
  /// to see data with labeled with A or B or (A and B).
  /// Structure is documented below.
  final pulumi.Input<List<DataAccessScopeAllowedDataAccessLabel>>? allowedDataAccessLabels;
  /// Output only. The user who created the data access scope.
  final pulumi.Input<String>? author;
  /// Output only. The time at which the data access scope was created.
  final pulumi.Input<String>? createTime;
  /// Required. The user provided scope id which will become the last part of the name
  /// of the scope resource.
  /// Needs to be compliant with https://google.aip.dev/122
  final pulumi.Input<String>? dataAccessScopeId;
  /// Optional. The denied labels for the scope.
  /// The logical operator for evaluation of the denied labels is AND.
  /// E.g.: A customer with scope with denied labels A and B won't be able
  /// to see data labeled with A and data labeled with B
  /// and data with labels A and B.
  /// Structure is documented below.
  final pulumi.Input<List<DataAccessScopeDeniedDataAccessLabel>>? deniedDataAccessLabels;
  /// Optional. A description of the data access scope for a human reader.
  final pulumi.Input<String>? description;
  /// Output only. The name to be used for display to customers of the data access scope.
  final pulumi.Input<String>? displayName;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String>? instance;
  /// Output only. The user who last updated the data access scope.
  final pulumi.Input<String>? lastEditor;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String>? location;
  /// The unique full name of the data access scope. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{data_access_scope_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. The time at which the data access scope was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataAccessScopeState].
  /// [allowAll] Optional. Whether or not the scope allows all labels, allow_all and
  /// [allowedDataAccessLabels] The allowed labels for the scope. There has to be at
  /// [author] Output only. The user who created the data access scope.
  /// [createTime] Output only. The time at which the data access scope was created.
  /// [dataAccessScopeId] Required. The user provided scope id which will become the last part of the name
  /// [deniedDataAccessLabels] Optional. The denied labels for the scope.
  /// [description] Optional. A description of the data access scope for a human reader.
  /// [displayName] Output only. The name to be used for display to customers of the data access scope.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [lastEditor] Output only. The user who last updated the data access scope.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [name] The unique full name of the data access scope. This unique identifier is generated using values provided for the URL parameters.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. The time at which the data access scope was last updated.
  DataAccessScopeState({
    pulumi.Output<bool>? allowAll,
    pulumi.Output<List<DataAccessScopeAllowedDataAccessLabel>>? allowedDataAccessLabels,
    pulumi.Output<String>? author,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataAccessScopeId,
    pulumi.Output<List<DataAccessScopeDeniedDataAccessLabel>>? deniedDataAccessLabels,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? lastEditor,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      allowAll = pulumi.Input.asOptionalInput<bool>(allowAll),
      allowedDataAccessLabels = pulumi.Input.asOptionalInput<List<DataAccessScopeAllowedDataAccessLabel>>(allowedDataAccessLabels),
      author = pulumi.Input.asOptionalInput<String>(author),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataAccessScopeId = pulumi.Input.asOptionalInput<String>(dataAccessScopeId),
      deniedDataAccessLabels = pulumi.Input.asOptionalInput<List<DataAccessScopeDeniedDataAccessLabel>>(deniedDataAccessLabels),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      lastEditor = pulumi.Input.asOptionalInput<String>(lastEditor),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAll': ?allowAll,
      'allowedDataAccessLabels': ?pulumi.Input.mapOptionalInputValue<List<DataAccessScopeAllowedDataAccessLabel>, List<Map<String, dynamic>>>(allowedDataAccessLabels, (value) => pulumi.Input.encodeList<DataAccessScopeAllowedDataAccessLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'author': ?author,
      'createTime': ?createTime,
      'dataAccessScopeId': ?dataAccessScopeId,
      'deniedDataAccessLabels': ?pulumi.Input.mapOptionalInputValue<List<DataAccessScopeDeniedDataAccessLabel>, List<Map<String, dynamic>>>(deniedDataAccessLabels, (value) => pulumi.Input.encodeList<DataAccessScopeDeniedDataAccessLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'instance': ?instance,
      'lastEditor': ?lastEditor,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory DataAccessScopeState.fromMap(Map<String, dynamic> map) {
    return DataAccessScopeState(
      allowAll: map['allowAll'] == null ? null : pulumi.Output.create<bool>(map['allowAll'] as bool),
      allowedDataAccessLabels: map['allowedDataAccessLabels'] == null ? null : pulumi.Output.create<List<DataAccessScopeAllowedDataAccessLabel>>(pulumi.Input.decodeList<DataAccessScopeAllowedDataAccessLabel>(map['allowedDataAccessLabels'], (value) => DataAccessScopeAllowedDataAccessLabel.fromMap((value as Map).cast<String, dynamic>()))),
      author: map['author'] == null ? null : pulumi.Output.create<String>(map['author'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataAccessScopeId: map['dataAccessScopeId'] == null ? null : pulumi.Output.create<String>(map['dataAccessScopeId'] as String),
      deniedDataAccessLabels: map['deniedDataAccessLabels'] == null ? null : pulumi.Output.create<List<DataAccessScopeDeniedDataAccessLabel>>(pulumi.Input.decodeList<DataAccessScopeDeniedDataAccessLabel>(map['deniedDataAccessLabels'], (value) => DataAccessScopeDeniedDataAccessLabel.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      lastEditor: map['lastEditor'] == null ? null : pulumi.Output.create<String>(map['lastEditor'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

