// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomId resources.
class RandomIdState {
  /// The generated id presented in base64 without additional transformations.
  final pulumi.Input<String>? b64Std;
  /// The generated id presented in base64, using the URL-friendly character set: case-sensitive letters, digits and the characters `_` and `-`.
  final pulumi.Input<String>? b64Url;
  /// The number of random bytes to produce. The minimum value is 1, which produces eight bits of randomness.
  final pulumi.Input<int>? byteLength;
  /// The generated id presented in non-padded decimal digits.
  final pulumi.Input<String>? dec;
  /// The generated id presented in padded hexadecimal digits. This result will always be twice as long as the requested byte length.
  final pulumi.Input<String>? hex;
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded.
  final pulumi.Input<String>? prefix;

  /// Creates a new [RandomIdState].
  /// [b64Std] The generated id presented in base64 without additional transformations.
  /// [b64Url] The generated id presented in base64, using the URL-friendly character set: case-sensitive letters, digits and the characters `_` and `-`.
  /// [byteLength] The number of random bytes to produce. The minimum value is 1, which produces eight bits of randomness.
  /// [dec] The generated id presented in non-padded decimal digits.
  /// [hex] The generated id presented in padded hexadecimal digits. This result will always be twice as long as the requested byte length.
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [prefix] Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded.
  const RandomIdState({
    this.b64Std,
    this.b64Url,
    this.byteLength,
    this.dec,
    this.hex,
    this.keepers,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'b64Std': ?b64Std,
      'b64Url': ?b64Url,
      'byteLength': ?byteLength,
      'dec': ?dec,
      'hex': ?hex,
      'keepers': ?keepers,
      'prefix': ?prefix,
    };
  }

  factory RandomIdState.fromMap(Map<String, dynamic> map) {
    return RandomIdState(
      b64Std: (() { final guardedValue = map['b64Std']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      b64Url: (() { final guardedValue = map['b64Url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      byteLength: (() { final guardedValue = map['byteLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dec: (() { final guardedValue = map['dec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hex: (() { final guardedValue = map['hex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepers: (() { final guardedValue = map['keepers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
