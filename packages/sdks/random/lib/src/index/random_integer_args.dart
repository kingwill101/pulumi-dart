// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_integer_random_integer_args_doc}
/// The set of arguments for RandomInteger.
/// {@endtemplate}
/// {@macro pulumi_index_random_integer_random_integer_args_doc}
class RandomIntegerArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The maximum inclusive value of the range.
  final pulumi.Input<int> max;

  /// The minimum inclusive value of the range.
  final pulumi.Input<int> min;

  /// A custom seed to always produce the same value.
  final pulumi.Input<String>? seed;

  /// Creates a new [RandomIntegerArgs].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [max] The maximum inclusive value of the range.
  /// [min] The minimum inclusive value of the range.
  /// [seed] A custom seed to always produce the same value.
  RandomIntegerArgs({
    this.keepers,
    required this.max,
    required this.min,
    this.seed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'max': max,
      'min': min,
      'seed': ?seed,
    };
  }

  factory RandomIntegerArgs.fromMap(Map<String, dynamic> map) {
    return RandomIntegerArgs(
      keepers: (() {
        final guardedValue = map['keepers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
      seed: (() {
        final guardedValue = map['seed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
