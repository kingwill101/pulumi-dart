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
  RandomIdState({
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
      b64Std: map['b64Std'] == null ? null : (map['b64Std'] as String).input(),
      b64Url: map['b64Url'] == null ? null : (map['b64Url'] as String).input(),
      byteLength: map['byteLength'] == null ? null : (map['byteLength'] as int).input(),
      dec: map['dec'] == null ? null : (map['dec'] as String).input(),
      hex: map['hex'] == null ? null : (map['hex'] as String).input(),
      keepers: map['keepers'] == null ? null : ((map['keepers'] as Map).cast<String, String>()).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

