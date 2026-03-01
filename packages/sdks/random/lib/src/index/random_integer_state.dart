// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomInteger resources.
class RandomIntegerState {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The maximum inclusive value of the range.
  final pulumi.Input<int>? max;
  /// The minimum inclusive value of the range.
  final pulumi.Input<int>? min;
  /// The random integer result.
  final pulumi.Input<int>? result;
  /// A custom seed to always produce the same value.
  final pulumi.Input<String>? seed;

  /// Creates a new [RandomIntegerState].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [max] The maximum inclusive value of the range.
  /// [min] The minimum inclusive value of the range.
  /// [result] The random integer result.
  /// [seed] A custom seed to always produce the same value.
  RandomIntegerState({
    pulumi.Output<Map<String, String>>? keepers,
    pulumi.Output<int>? max,
    pulumi.Output<int>? min,
    pulumi.Output<int>? result,
    pulumi.Output<String>? seed,
  }) :
      keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers),
      max = pulumi.Input.asOptionalInput<int>(max),
      min = pulumi.Input.asOptionalInput<int>(min),
      result = pulumi.Input.asOptionalInput<int>(result),
      seed = pulumi.Input.asOptionalInput<String>(seed);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'max': ?max,
      'min': ?min,
      'result': ?result,
      'seed': ?seed,
    };
  }

  factory RandomIntegerState.fromMap(Map<String, dynamic> map) {
    return RandomIntegerState(
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
      max: map['max'] == null ? null : pulumi.Output.create<int>(map['max'] as int),
      min: map['min'] == null ? null : pulumi.Output.create<int>(map['min'] as int),
      result: map['result'] == null ? null : pulumi.Output.create<int>(map['result'] as int),
      seed: map['seed'] == null ? null : pulumi.Output.create<String>(map['seed'] as String),
    );
  }
}

