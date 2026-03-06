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
  const GetGlossaryEntryArgs({
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
      glossaryEntryId: pulumi.Input.fromValue(map['glossaryEntryId'] as String),
      glossaryId: pulumi.Input.fromValue(map['glossaryId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

