// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_auto_accept.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Optional. The auto-accept setting for this group.
  /// Structure is documented below.
  final pulumi.Input<GroupAutoAccept>? autoAccept;
  /// Output only. The time the hub was created.
  final pulumi.Input<String>? createTime;
  /// An optional description of the group.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  final pulumi.Input<String>? hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the group. Group names must be unique.
  /// Possible values are: `default`, `center`, `edge`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Output only. The name of the route table that corresponds to this group. They use the following form: `projects/{projectNumber}/locations/global/hubs/{hubId}/routeTables/{route_table_id}`
  final pulumi.Input<String>? routeTable;
  /// Output only. The current lifecycle state of this hub.
  final pulumi.Input<String>? state;
  /// Output only. The Google-generated UUID for the group. This value is unique across all group resources. If a group is deleted and another with the same name is created, the new route table is assigned a different uniqueId.
  final pulumi.Input<String>? uid;
  /// Output only. The time the hub was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GroupState].
  /// [autoAccept] Optional. The auto-accept setting for this group.
  /// [createTime] Output only. The time the hub was created.
  /// [description] An optional description of the group.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [hub] The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] The name of the group. Group names must be unique.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [routeTable] Output only. The name of the route table that corresponds to this group. They use the following form: `projects/{projectNumber}/locations/global/hubs/{hubId}/routeTables/{route_table_id}`
  /// [state] Output only. The current lifecycle state of this hub.
  /// [uid] Output only. The Google-generated UUID for the group. This value is unique across all group resources. If a group is deleted and another with the same name is created, the new route table is assigned a different uniqueId.
  /// [updateTime] Output only. The time the hub was last updated.
  GroupState({
    pulumi.Output<GroupAutoAccept>? autoAccept,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? hub,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? routeTable,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      autoAccept = pulumi.Input.asOptionalInput<GroupAutoAccept>(autoAccept),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      hub = pulumi.Input.asOptionalInput<String>(hub),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      routeTable = pulumi.Input.asOptionalInput<String>(routeTable),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAccept': ?pulumi.Input.mapOptionalInputValue<GroupAutoAccept, Map<String, dynamic>>(autoAccept, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'hub': ?hub,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'routeTable': ?routeTable,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      autoAccept: map['autoAccept'] == null ? null : pulumi.Output.create<GroupAutoAccept>(GroupAutoAccept.fromMap((map['autoAccept'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      hub: map['hub'] == null ? null : pulumi.Output.create<String>(map['hub'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      routeTable: map['routeTable'] == null ? null : pulumi.Output.create<String>(map['routeTable'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

