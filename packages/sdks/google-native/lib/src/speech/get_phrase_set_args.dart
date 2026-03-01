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
  GetPhraseSetArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> phraseSetId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      phraseSetId = pulumi.Input.asInput<String>(phraseSetId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'phraseSetId': phraseSetId,
      'project': ?project,
    };
  }

  factory GetPhraseSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPhraseSetArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      phraseSetId: pulumi.Output.create<String>(map['phraseSetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

