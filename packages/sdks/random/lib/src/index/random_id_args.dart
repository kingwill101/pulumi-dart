// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_id_random_id_args_doc}
/// The set of arguments for RandomId.
/// {@endtemplate}
/// {@macro pulumi_index_random_id_random_id_args_doc}
class RandomIdArgs {
  /// The number of random bytes to produce. The minimum value is 1, which produces eight bits of randomness.
  final pulumi.Input<int> byteLength;
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded.
  final pulumi.Input<String>? prefix;

  /// Creates a new [RandomIdArgs].
  /// [byteLength] The number of random bytes to produce. The minimum value is 1, which produces eight bits of randomness.
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [prefix] Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded.
  RandomIdArgs({
    required this.byteLength,
    this.keepers,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byteLength': byteLength,
      'keepers': ?keepers,
      'prefix': ?prefix,
    };
  }

  factory RandomIdArgs.fromMap(Map<String, dynamic> map) {
    return RandomIdArgs(
      byteLength: (map['byteLength'] as int).input(),
      keepers: map['keepers'] == null ? null : ((map['keepers'] as Map).cast<String, String>()).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

