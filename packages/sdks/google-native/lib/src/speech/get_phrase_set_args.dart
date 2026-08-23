// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_speech_v1_get_phrase_set_args_doc}
/// Arguments for getPhraseSet.
/// {@endtemplate}
/// {@macro pulumi_speech_v1_get_phrase_set_args_doc}
class GetPhraseSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> phraseSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPhraseSetArgs].
  /// [location] Required.
  /// [phraseSetId] Required.
  /// [project] Optional.
  const GetPhraseSetArgs({
    required this.location,
    required this.phraseSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'phraseSetId': phraseSetId,
      'project': ?project,
    };
  }

  factory GetPhraseSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPhraseSetArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      phraseSetId: pulumi.Input.fromValue(map['phraseSetId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
