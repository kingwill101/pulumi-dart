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
    required pulumi.Output<String> glossaryEntryId,
    required pulumi.Output<String> glossaryId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      glossaryEntryId = pulumi.Input.asInput<String>(glossaryEntryId),
      glossaryId = pulumi.Input.asInput<String>(glossaryId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      glossaryEntryId: pulumi.Output.create<String>(map['glossaryEntryId'] as String),
      glossaryId: pulumi.Output.create<String>(map['glossaryId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

