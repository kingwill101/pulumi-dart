// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomShuffle resources.
class RandomShuffleState {
  /// The list of strings to shuffle.
  final pulumi.Input<List<String>>? inputs;
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The number of results to return. Defaults to the number of items in the `input` list. If fewer items are requested, some elements will be excluded from the result. If more items are requested, items will be repeated in the result but not more frequently than the number of items in the input list.
  final pulumi.Input<int>? resultCount;
  /// Random permutation of the list of strings given in `input`. The number of elements is determined by `result_count` if set, or the number of elements in `input`.
  final pulumi.Input<List<String>>? results;
  /// Arbitrary string with which to seed the random number generator, in order to produce less-volatile permutations of the list.
  final pulumi.Input<String>? seed;

  /// Creates a new [RandomShuffleState].
  /// [inputs] The list of strings to shuffle.
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [resultCount] The number of results to return. Defaults to the number of items in the `input` list. If fewer items are requested, some elements will be excluded from the result. If more items are requested, items will be repeated in the result but not more frequently than the number of items in the input list.
  /// [results] Random permutation of the list of strings given in `input`. The number of elements is determined by `result_count` if set, or the number of elements in `input`.
  /// [seed] Arbitrary string with which to seed the random number generator, in order to produce less-volatile permutations of the list.
  RandomShuffleState({
    this.inputs,
    this.keepers,
    this.resultCount,
    this.results,
    this.seed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': ?inputs,
      'keepers': ?keepers,
      'resultCount': ?resultCount,
      'results': ?results,
      'seed': ?seed,
    };
  }

  factory RandomShuffleState.fromMap(Map<String, dynamic> map) {
    return RandomShuffleState(
      inputs: map['inputs'] == null ? null : ((map['inputs'] as List).cast<String>()).input(),
      keepers: map['keepers'] == null ? null : ((map['keepers'] as Map).cast<String, String>()).input(),
      resultCount: map['resultCount'] == null ? null : (map['resultCount'] as int).input(),
      results: map['results'] == null ? null : ((map['results'] as List).cast<String>()).input(),
      seed: map['seed'] == null ? null : (map['seed'] as String).input(),
    );
  }
}

