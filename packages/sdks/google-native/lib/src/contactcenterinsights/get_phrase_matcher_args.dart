// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_get_phrase_matcher_args_doc}
/// Arguments for getPhraseMatcher.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_get_phrase_matcher_args_doc}
class GetPhraseMatcherArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> phraseMatcherId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPhraseMatcherArgs].
  /// [location] Required.
  /// [phraseMatcherId] Required.
  /// [project] Optional.
  GetPhraseMatcherArgs({
    required this.location,
    required this.phraseMatcherId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'phraseMatcherId': phraseMatcherId,
      'project': ?project,
    };
  }

  factory GetPhraseMatcherArgs.fromMap(Map<String, dynamic> map) {
    return GetPhraseMatcherArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      phraseMatcherId: pulumi.Input.fromValue(map['phraseMatcherId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

