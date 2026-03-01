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
    pulumi.Output<String>? b64Std,
    pulumi.Output<String>? b64Url,
    pulumi.Output<int>? byteLength,
    pulumi.Output<String>? dec,
    pulumi.Output<String>? hex,
    pulumi.Output<Map<String, String>>? keepers,
    pulumi.Output<String>? prefix,
  }) :
      b64Std = pulumi.Input.asOptionalInput<String>(b64Std),
      b64Url = pulumi.Input.asOptionalInput<String>(b64Url),
      byteLength = pulumi.Input.asOptionalInput<int>(byteLength),
      dec = pulumi.Input.asOptionalInput<String>(dec),
      hex = pulumi.Input.asOptionalInput<String>(hex),
      keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers),
      prefix = pulumi.Input.asOptionalInput<String>(prefix);

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
      b64Std: map['b64Std'] == null ? null : pulumi.Output.create<String>(map['b64Std'] as String),
      b64Url: map['b64Url'] == null ? null : pulumi.Output.create<String>(map['b64Url'] as String),
      byteLength: map['byteLength'] == null ? null : pulumi.Output.create<int>(map['byteLength'] as int),
      dec: map['dec'] == null ? null : pulumi.Output.create<String>(map['dec'] as String),
      hex: map['hex'] == null ? null : pulumi.Output.create<String>(map['hex'] as String),
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
    );
  }
}

