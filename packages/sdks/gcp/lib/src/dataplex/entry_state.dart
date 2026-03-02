// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_aspect.dart';
import 'entry_entry_source.dart';

/// Input properties used for looking up and filtering Entry resources.
class EntryState {
  /// The aspects that are attached to the entry.
  /// Structure is documented below.
  final pulumi.Input<List<EntryAspect>>? aspects;
  /// The time when the Entry was created in Dataplex.
  final pulumi.Input<String>? createTime;
  /// The entry group id of the entry group the entry will be created in.
  final pulumi.Input<String>? entryGroupId;
  /// The entry id of the entry.
  final pulumi.Input<String>? entryId;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EntryEntrySource>? entrySource;
  /// The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  final pulumi.Input<String>? entryType;
  /// A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// The maximum size of the field is 4000 characters.
  final pulumi.Input<String>? fullyQualifiedName;
  /// The location where entry will be created.
  final pulumi.Input<String>? location;
  /// The relative resource name of the entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  final pulumi.Input<String>? name;
  /// The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  final pulumi.Input<String>? parentEntry;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The time when the entry was last updated in Dataplex.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EntryState].
  /// [aspects] The aspects that are attached to the entry.
  /// [createTime] The time when the Entry was created in Dataplex.
  /// [entryGroupId] The entry group id of the entry group the entry will be created in.
  /// [entryId] The entry id of the entry.
  /// [entrySource] A nested object resource.
  /// [entryType] The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  /// [fullyQualifiedName] A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// [location] The location where entry will be created.
  /// [name] The relative resource name of the entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  /// [parentEntry] The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The time when the entry was last updated in Dataplex.
  EntryState({
    this.aspects,
    this.createTime,
    this.entryGroupId,
    this.entryId,
    this.entrySource,
    this.entryType,
    this.fullyQualifiedName,
    this.location,
    this.name,
    this.parentEntry,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspects': ?pulumi.Input.mapOptionalInputValue<List<EntryAspect>, List<Map<String, dynamic>>>(aspects, (value) => pulumi.Input.encodeList<EntryAspect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'entryGroupId': ?entryGroupId,
      'entryId': ?entryId,
      'entrySource': ?pulumi.Input.mapOptionalInputValue<EntryEntrySource, Map<String, dynamic>>(entrySource, (value) => value.toMap()),
      'entryType': ?entryType,
      'fullyQualifiedName': ?fullyQualifiedName,
      'location': ?location,
      'name': ?name,
      'parentEntry': ?parentEntry,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory EntryState.fromMap(Map<String, dynamic> map) {
    return EntryState(
      aspects: map['aspects'] == null ? null : (pulumi.Input.decodeList<EntryAspect>(map['aspects'], (value) => EntryAspect.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      entryGroupId: map['entryGroupId'] == null ? null : (map['entryGroupId'] as String).input(),
      entryId: map['entryId'] == null ? null : (map['entryId'] as String).input(),
      entrySource: map['entrySource'] == null ? null : (EntryEntrySource.fromMap((map['entrySource'] as Map).cast<String, dynamic>())).input(),
      entryType: map['entryType'] == null ? null : (map['entryType'] as String).input(),
      fullyQualifiedName: map['fullyQualifiedName'] == null ? null : (map['fullyQualifiedName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentEntry: map['parentEntry'] == null ? null : (map['parentEntry'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

