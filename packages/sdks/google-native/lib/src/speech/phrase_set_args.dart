// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'phrase.dart';

/// {@template pulumi_speech_v1_phrase_set_args_doc}
/// The set of arguments for PhraseSet.
/// {@endtemplate}
/// {@macro pulumi_speech_v1_phrase_set_args_doc}
class PhraseSetArgs {
  /// Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case as well as adding phrases both with and without boost to your requests.
  final pulumi.Input<double>? boost;
  final pulumi.Input<String>? location;
  /// The resource name of the phrase set.
  final pulumi.Input<String>? name;
  /// The ID to use for the phrase set, which will become the final component of the phrase set's resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  final pulumi.Input<String> phraseSetId;
  /// A list of word and phrases.
  final pulumi.Input<List<Phrase>>? phrases;
  final pulumi.Input<String>? project;

  /// Creates a new [PhraseSetArgs].
  /// [boost] Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case as well as adding phrases both with and without boost to your requests.
  /// [location] Optional.
  /// [name] The resource name of the phrase set.
  /// [phraseSetId] The ID to use for the phrase set, which will become the final component of the phrase set's resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  /// [phrases] A list of word and phrases.
  /// [project] Optional.
  PhraseSetArgs({
    this.boost,
    this.location,
    this.name,
    required this.phraseSetId,
    this.phrases,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boost': ?boost,
      'location': ?location,
      'name': ?name,
      'phraseSetId': phraseSetId,
      'phrases': ?pulumi.Input.mapOptionalInputValue<List<Phrase>, List<Map<String, dynamic>>>(phrases, (value) => pulumi.Input.encodeList<Phrase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory PhraseSetArgs.fromMap(Map<String, dynamic> map) {
    return PhraseSetArgs(
      boost: (() { final guardedValue = map['boost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phraseSetId: pulumi.Input.fromValue(map['phraseSetId'] as String),
      phrases: (() { final guardedValue = map['phrases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Phrase>(guardedValue, (value) => Phrase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

