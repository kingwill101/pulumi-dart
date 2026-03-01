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
    pulumi.Output<List<String>>? inputs,
    pulumi.Output<Map<String, String>>? keepers,
    pulumi.Output<int>? resultCount,
    pulumi.Output<List<String>>? results,
    pulumi.Output<String>? seed,
  }) :
      inputs = pulumi.Input.asOptionalInput<List<String>>(inputs),
      keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers),
      resultCount = pulumi.Input.asOptionalInput<int>(resultCount),
      results = pulumi.Input.asOptionalInput<List<String>>(results),
      seed = pulumi.Input.asOptionalInput<String>(seed);

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
      inputs: map['inputs'] == null ? null : pulumi.Output.create<List<String>>((map['inputs'] as List).cast<String>()),
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
      resultCount: map['resultCount'] == null ? null : pulumi.Output.create<int>(map['resultCount'] as int),
      results: map['results'] == null ? null : pulumi.Output.create<List<String>>((map['results'] as List).cast<String>()),
      seed: map['seed'] == null ? null : pulumi.Output.create<String>(map['seed'] as String),
    );
  }
}

