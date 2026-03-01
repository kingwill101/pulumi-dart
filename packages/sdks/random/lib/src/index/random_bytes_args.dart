// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_bytes_random_bytes_args_doc}
/// The set of arguments for RandomBytes.
/// {@endtemplate}
/// {@macro pulumi_index_random_bytes_random_bytes_args_doc}
class RandomBytesArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The number of bytes requested. The minimum value for length is 1.
  final pulumi.Input<int> length;

  /// Creates a new [RandomBytesArgs].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [length] The number of bytes requested. The minimum value for length is 1.
  RandomBytesArgs({
    pulumi.Output<Map<String, String>>? keepers,
    required pulumi.Output<int> length,
  }) :
      keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers),
      length = pulumi.Input.asInput<int>(length);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'length': length,
    };
  }

  factory RandomBytesArgs.fromMap(Map<String, dynamic> map) {
    return RandomBytesArgs(
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
      length: pulumi.Output.create<int>(map['length'] as int),
    );
  }
}

