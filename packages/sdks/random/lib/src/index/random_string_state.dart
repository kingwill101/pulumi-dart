// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomString resources.
class RandomStringState {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The length of the string desired. The minimum value for length is 1 and, length must also be &gt;= (`minUpper` + `minLower` + `minNumeric` + `minSpecial`).
  final pulumi.Input<int>? length;
  /// Include lowercase alphabet characters in the result. Default value is `true`.
  final pulumi.Input<bool>? lower;
  /// Minimum number of lowercase alphabet characters in the result. Default value is `0`.
  final pulumi.Input<int>? minLower;
  /// Minimum number of numeric characters in the result. Default value is `0`.
  final pulumi.Input<int>? minNumeric;
  /// Minimum number of special characters in the result. Default value is `0`.
  final pulumi.Input<int>? minSpecial;
  /// Minimum number of uppercase alphabet characters in the result. Default value is `0`.
  final pulumi.Input<int>? minUpper;
  /// Include numeric characters in the result. Default value is `true`. If `number`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`. **NOTE**: This is deprecated, use `numeric` instead.
  final pulumi.Input<bool>? number;
  /// Include numeric characters in the result. Default value is `true`. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`.
  final pulumi.Input<bool>? numeric;
  /// Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The `special` argument must still be set to true for any overwritten characters to be used in generation.
  final pulumi.Input<String>? overrideSpecial;
  /// The generated random string.
  final pulumi.Input<String>? result;
  /// Include special characters in the result. These are `!@#$%&*()-_=+[]{}&lt;&gt;:?`. Default value is `true`.
  final pulumi.Input<bool>? special;
  /// Include uppercase alphabet characters in the result. Default value is `true`.
  final pulumi.Input<bool>? upper;

  /// Creates a new [RandomStringState].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [length] The length of the string desired. The minimum value for length is 1 and, length must also be &gt;= (`minUpper` + `minLower` + `minNumeric` + `minSpecial`).
  /// [lower] Include lowercase alphabet characters in the result. Default value is `true`.
  /// [minLower] Minimum number of lowercase alphabet characters in the result. Default value is `0`.
  /// [minNumeric] Minimum number of numeric characters in the result. Default value is `0`.
  /// [minSpecial] Minimum number of special characters in the result. Default value is `0`.
  /// [minUpper] Minimum number of uppercase alphabet characters in the result. Default value is `0`.
  /// [number] Include numeric characters in the result. Default value is `true`. If `number`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`. **NOTE**: This is deprecated, use `numeric` instead.
  /// [numeric] Include numeric characters in the result. Default value is `true`. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`.
  /// [overrideSpecial] Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The `special` argument must still be set to true for any overwritten characters to be used in generation.
  /// [result] The generated random string.
  /// [special] Include special characters in the result. These are `!@#$%&*()-_=+[]{}&lt;&gt;:?`. Default value is `true`.
  /// [upper] Include uppercase alphabet characters in the result. Default value is `true`.
  const RandomStringState({
    this.keepers,
    this.length,
    this.lower,
    this.minLower,
    this.minNumeric,
    this.minSpecial,
    this.minUpper,
    this.number,
    this.numeric,
    this.overrideSpecial,
    this.result,
    this.special,
    this.upper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'length': ?length,
      'lower': ?lower,
      'minLower': ?minLower,
      'minNumeric': ?minNumeric,
      'minSpecial': ?minSpecial,
      'minUpper': ?minUpper,
      'number': ?number,
      'numeric': ?numeric,
      'overrideSpecial': ?overrideSpecial,
      'result': ?result,
      'special': ?special,
      'upper': ?upper,
    };
  }

  factory RandomStringState.fromMap(Map<String, dynamic> map) {
    return RandomStringState(
      keepers: (() { final guardedValue = map['keepers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      length: (() { final guardedValue = map['length']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lower: (() { final guardedValue = map['lower']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minLower: (() { final guardedValue = map['minLower']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNumeric: (() { final guardedValue = map['minNumeric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minSpecial: (() { final guardedValue = map['minSpecial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minUpper: (() { final guardedValue = map['minUpper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      number: (() { final guardedValue = map['number']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numeric: (() { final guardedValue = map['numeric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      overrideSpecial: (() { final guardedValue = map['overrideSpecial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      special: (() { final guardedValue = map['special']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upper: (() { final guardedValue = map['upper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
