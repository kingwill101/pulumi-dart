// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EntryGroup resources.
class EntryGroupState {
  /// The time when the EntryGroup was created.
  final pulumi.Input<String>? createTime;
  /// Description of the EntryGroup.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The entry group id of the entry group.
  final pulumi.Input<String>? entryGroupId;
  /// User-defined labels for the EntryGroup.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where entry group will be created in.
  final pulumi.Input<String>? location;
  /// The relative resource name of the EntryGroup, of the form: projects/{project_number}/locations/{location_id}/entryGroups/{entry_group_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Denotes the transfer status of the Entry Group. It is unspecified
  /// for Entry Group created from Dataplex API.
  final pulumi.Input<String>? transferStatus;
  /// System generated globally unique ID for the EntryGroup. This ID will be different if the EntryGroup is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// The time when the EntryGroup was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EntryGroupState].
  /// [createTime] The time when the EntryGroup was created.
  /// [description] Description of the EntryGroup.
  /// [displayName] User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entryGroupId] The entry group id of the entry group.
  /// [labels] User-defined labels for the EntryGroup.
  /// [location] The location where entry group will be created in.
  /// [name] The relative resource name of the EntryGroup, of the form: projects/{project_number}/locations/{location_id}/entryGroups/{entry_group_id}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [transferStatus] Denotes the transfer status of the Entry Group. It is unspecified
  /// [uid] System generated globally unique ID for the EntryGroup. This ID will be different if the EntryGroup is deleted and re-created with the same name.
  /// [updateTime] The time when the EntryGroup was last updated.
  EntryGroupState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entryGroupId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? transferStatus,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entryGroupId = pulumi.Input.asOptionalInput<String>(entryGroupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      transferStatus = pulumi.Input.asOptionalInput<String>(transferStatus),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entryGroupId': ?entryGroupId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'transferStatus': ?transferStatus,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory EntryGroupState.fromMap(Map<String, dynamic> map) {
    return EntryGroupState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entryGroupId: map['entryGroupId'] == null ? null : pulumi.Output.create<String>(map['entryGroupId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      transferStatus: map['transferStatus'] == null ? null : pulumi.Output.create<String>(map['transferStatus'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

