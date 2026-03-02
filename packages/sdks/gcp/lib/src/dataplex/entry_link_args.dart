// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_link_entry_reference.dart';

/// {@template pulumi_dataplex_entry_link_entry_link_args_doc}
/// The set of arguments for EntryLink.
/// {@endtemplate}
/// {@macro pulumi_dataplex_entry_link_entry_link_args_doc}
class EntryLinkArgs {
  /// The id of the entry group this entry link is in.
  final pulumi.Input<String> entryGroupId;
  /// The id of the entry link to create.
  final pulumi.Input<String> entryLinkId;
  /// Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// projects/dataplex-types/locations/global/entryLinkTypes/definition
  final pulumi.Input<String> entryLinkType;
  /// Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// Structure is documented below.
  final pulumi.Input<List<EntryLinkEntryReference>> entryReferences;
  /// The location for the entry.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EntryLinkArgs].
  /// [entryGroupId] The id of the entry group this entry link is in.
  /// [entryLinkId] The id of the entry link to create.
  /// [entryLinkType] Relative resource name of the Entry Link Type used to create this Entry Link. For example:
  /// [entryReferences] Specifies the Entries referenced in the Entry Link. There should be exactly two entry references.
  /// [location] The location for the entry.
  /// [project] The ID of the project in which the resource belongs.
  EntryLinkArgs({
    required this.entryGroupId,
    required this.entryLinkId,
    required this.entryLinkType,
    required this.entryReferences,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'entryLinkId': entryLinkId,
      'entryLinkType': entryLinkType,
      'entryReferences': pulumi.Input.mapInputValue<List<EntryLinkEntryReference>, List<Map<String, dynamic>>>(entryReferences, (value) => pulumi.Input.encodeList<EntryLinkEntryReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'project': ?project,
    };
  }

  factory EntryLinkArgs.fromMap(Map<String, dynamic> map) {
    return EntryLinkArgs(
      entryGroupId: (map['entryGroupId'] as String).input(),
      entryLinkId: (map['entryLinkId'] as String).input(),
      entryLinkType: (map['entryLinkType'] as String).input(),
      entryReferences: (pulumi.Input.decodeList<EntryLinkEntryReference>(map['entryReferences'], (value) => EntryLinkEntryReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

