// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_aspect.dart';
import 'entry_entry_source.dart';

/// {@template pulumi_dataplex_entry_entry_args_doc}
/// The set of arguments for Entry.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_entry_args_doc}
class EntryArgs {
  /// The aspects that are attached to the entry.
  /// Structure is documented below.
  final pulumi.Input<List<EntryAspect>>? aspects;
  /// The entry group id of the entry group the entry will be created in.
  final pulumi.Input<String>? entryGroupId;
  /// The entry id of the entry.
  final pulumi.Input<String>? entryId;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EntryEntrySource>? entrySource;
  /// The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  final pulumi.Input<String> entryType;
  /// A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// The maximum size of the field is 4000 characters.
  final pulumi.Input<String>? fullyQualifiedName;
  /// The location where entry will be created.
  final pulumi.Input<String>? location;
  /// The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  final pulumi.Input<String>? parentEntry;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EntryArgs].
  /// [aspects] The aspects that are attached to the entry.
  /// [entryGroupId] The entry group id of the entry group the entry will be created in.
  /// [entryId] The entry id of the entry.
  /// [entrySource] A nested object resource.
  /// [entryType] The relative resource name of the entry type that was used to create this entry, in the format projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
  /// [fullyQualifiedName] A name for the entry that can be referenced by an external system. For more information, see https://cloud.google.com/dataplex/docs/fully-qualified-names.
  /// [location] The location where entry will be created.
  /// [parentEntry] The resource name of the parent entry, in the format projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
  /// [project] The ID of the project in which the resource belongs.
  const EntryArgs({
    this.aspects,
    this.entryGroupId,
    this.entryId,
    this.entrySource,
    required this.entryType,
    this.fullyQualifiedName,
    this.location,
    this.parentEntry,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspects': ?pulumi.Input.mapOptionalInputValue<List<EntryAspect>, List<Map<String, dynamic>>>(aspects, (value) => pulumi.Input.encodeList<EntryAspect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entryGroupId': ?entryGroupId,
      'entryId': ?entryId,
      'entrySource': ?pulumi.Input.mapOptionalInputValue<EntryEntrySource, Map<String, dynamic>>(entrySource, (value) => value.toMap()),
      'entryType': entryType,
      'fullyQualifiedName': ?fullyQualifiedName,
      'location': ?location,
      'parentEntry': ?parentEntry,
      'project': ?project,
    };
  }

  factory EntryArgs.fromMap(Map<String, dynamic> map) {
    return EntryArgs(
      aspects: (() { final guardedValue = map['aspects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EntryAspect>(guardedValue, (value) => EntryAspect.fromMap((value as Map).cast<String, dynamic>()))); })(),
      entryGroupId: (() { final guardedValue = map['entryGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entrySource: (() { final guardedValue = map['entrySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntryEntrySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entryType: pulumi.Input.fromValue(map['entryType'] as String),
      fullyQualifiedName: (() { final guardedValue = map['fullyQualifiedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentEntry: (() { final guardedValue = map['parentEntry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

