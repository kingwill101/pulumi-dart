// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_get_glossary_args_doc}
/// Arguments for getGlossary.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_get_glossary_args_doc}
class GetGlossaryArgs {
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlossaryArgs].
  /// [glossaryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGlossaryArgs({
    required this.glossaryId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glossaryId': glossaryId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGlossaryArgs.fromMap(Map<String, dynamic> map) {
    return GetGlossaryArgs(
      glossaryId: (map['glossaryId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

