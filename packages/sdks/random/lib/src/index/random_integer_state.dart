// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomInteger resources.
class RandomIntegerState {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>?>? keepers;
  /// The maximum inclusive value of the range.
  final pulumi.Input<int?>? max;
  /// The minimum inclusive value of the range.
  final pulumi.Input<int?>? min;
  /// The random integer result.
  final pulumi.Input<int?>? result;
  /// A custom seed to always produce the same value.
  final pulumi.Input<String?>? seed;

  /// Creates a new [RandomIntegerState].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [max] The maximum inclusive value of the range.
  /// [min] The minimum inclusive value of the range.
  /// [result] The random integer result.
  /// [seed] A custom seed to always produce the same value.
  const RandomIntegerState({
    this.keepers,
    this.max,
    this.min,
    this.result,
    this.seed,
  });

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
      keepers: (() { final guardedValue = map['keepers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      seed: (() { final guardedValue = map['seed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
