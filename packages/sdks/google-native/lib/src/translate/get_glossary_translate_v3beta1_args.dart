// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3beta1_get_glossary_translate_v3beta1_args_doc}
/// Arguments for getGlossary.
/// {@endtemplate}
/// {@macro pulumi_translate_v3beta1_get_glossary_translate_v3beta1_args_doc}
class GetGlossaryTranslateV3beta1Args {
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlossaryTranslateV3beta1Args].
  /// [glossaryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGlossaryTranslateV3beta1Args({
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

  factory GetGlossaryTranslateV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetGlossaryTranslateV3beta1Args(
      glossaryId: (map['glossaryId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

