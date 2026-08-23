// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EntryGroup resources.
class EntryGroupState {
  /// The time when the EntryGroup was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const EntryGroupState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.entryGroupId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.transferStatus,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      entryGroupId: (() { final guardedValue = map['entryGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transferStatus: (() { final guardedValue = map['transferStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
