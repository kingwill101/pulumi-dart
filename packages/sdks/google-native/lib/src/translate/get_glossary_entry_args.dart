// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_get_glossary_entry_args_doc}
/// Arguments for getGlossaryEntry.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_get_glossary_entry_args_doc}
class GetGlossaryEntryArgs {
  final pulumi.Input<String> glossaryEntryId;
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlossaryEntryArgs].
  /// [glossaryEntryId] Required.
  /// [glossaryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGlossaryEntryArgs({
    required this.glossaryEntryId,
    required this.glossaryId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glossaryEntryId': glossaryEntryId,
      'glossaryId': glossaryId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGlossaryEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetGlossaryEntryArgs(
      glossaryEntryId: (map['glossaryEntryId'] as String).input(),
      glossaryId: (map['glossaryId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

