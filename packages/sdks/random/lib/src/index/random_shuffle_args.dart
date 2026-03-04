// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_shuffle_random_shuffle_args_doc}
/// The set of arguments for RandomShuffle.
/// {@endtemplate}
/// {@macro pulumi_index_random_shuffle_random_shuffle_args_doc}
class RandomShuffleArgs {
  /// The list of strings to shuffle.
  final pulumi.Input<List<String>> inputs;

  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The number of results to return. Defaults to the number of items in the `input` list. If fewer items are requested, some elements will be excluded from the result. If more items are requested, items will be repeated in the result but not more frequently than the number of items in the input list.
  final pulumi.Input<int>? resultCount;

  /// Arbitrary string with which to seed the random number generator, in order to produce less-volatile permutations of the list.
  final pulumi.Input<String>? seed;

  /// Creates a new [RandomShuffleArgs].
  /// [inputs] The list of strings to shuffle.
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [resultCount] The number of results to return. Defaults to the number of items in the `input` list. If fewer items are requested, some elements will be excluded from the result. If more items are requested, items will be repeated in the result but not more frequently than the number of items in the input list.
  /// [seed] Arbitrary string with which to seed the random number generator, in order to produce less-volatile permutations of the list.
  RandomShuffleArgs({
    required this.inputs,
    this.keepers,
    this.resultCount,
    this.seed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputs': inputs,
      'keepers': ?keepers,
      'resultCount': ?resultCount,
      'seed': ?seed,
    };
  }

  factory RandomShuffleArgs.fromMap(Map<String, dynamic> map) {
    return RandomShuffleArgs(
      inputs: pulumi.Input.fromValue((map['inputs'] as List).cast<String>()),
      keepers: (() {
        final guardedValue = map['keepers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resultCount: (() {
        final guardedValue = map['resultCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      seed: (() {
        final guardedValue = map['seed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
