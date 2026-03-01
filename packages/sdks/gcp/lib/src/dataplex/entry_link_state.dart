// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_link_entry_reference.dart';

/// Input properties used for looking up and filtering EntryLink resources.
class EntryLinkState {
  /// The time when the Entry Link was created.
  final pulumi.Input<String>? createTime;
  /// The id of the entry group this entry link is in.
  final pulumi.Input<String>? entryGroupId;
  /// The id of the entry link to create.
  final pulumi.Input<String>? entryLinkId;
  /// Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// projects/dataplex-types/locations/global/entryLinkTypes/definition
  final pulumi.Input<String>? entryLinkType;
  /// Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// Structure is documented below.
  final pulumi.Input<List<EntryLinkEntryReference>>? entryReferences;
  /// The location for the entry.
  final pulumi.Input<String>? location;
  /// The relative resource name of the Entry Link, of the form:
  /// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}/entryLinks/{entry_link_id}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The time when the Entry Link was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EntryLinkState].
  /// [createTime] The time when the Entry Link was created.
  /// [entryGroupId] The id of the entry group this entry link is in.
  /// [entryLinkId] The id of the entry link to create.
  /// [entryLinkType] Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// [entryReferences] Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// [location] The location for the entry.
  /// [name] The relative resource name of the Entry Link, of the form:
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The time when the Entry Link was last updated.
  EntryLinkState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? entryGroupId,
    pulumi.Output<String>? entryLinkId,
    pulumi.Output<String>? entryLinkType,
    pulumi.Output<List<EntryLinkEntryReference>>? entryReferences,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      entryGroupId = pulumi.Input.asOptionalInput<String>(entryGroupId),
      entryLinkId = pulumi.Input.asOptionalInput<String>(entryLinkId),
      entryLinkType = pulumi.Input.asOptionalInput<String>(entryLinkType),
      entryReferences = pulumi.Input.asOptionalInput<List<EntryLinkEntryReference>>(entryReferences),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'entryGroupId': ?entryGroupId,
      'entryLinkId': ?entryLinkId,
      'entryLinkType': ?entryLinkType,
      'entryReferences': ?pulumi.Input.mapOptionalInputValue<List<EntryLinkEntryReference>, List<Map<String, dynamic>>>(entryReferences, (value) => pulumi.Input.encodeList<EntryLinkEntryReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory EntryLinkState.fromMap(Map<String, dynamic> map) {
    return EntryLinkState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      entryGroupId: map['entryGroupId'] == null ? null : pulumi.Output.create<String>(map['entryGroupId'] as String),
      entryLinkId: map['entryLinkId'] == null ? null : pulumi.Output.create<String>(map['entryLinkId'] as String),
      entryLinkType: map['entryLinkType'] == null ? null : pulumi.Output.create<String>(map['entryLinkType'] as String),
      entryReferences: map['entryReferences'] == null ? null : pulumi.Output.create<List<EntryLinkEntryReference>>(pulumi.Input.decodeList<EntryLinkEntryReference>(map['entryReferences'], (value) => EntryLinkEntryReference.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

