// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_uuid4_random_uuid4_args_doc}
/// The set of arguments for RandomUuid4.
/// {@endtemplate}
/// {@macro pulumi_index_random_uuid4_random_uuid4_args_doc}
class RandomUuid4Args {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// Creates a new [RandomUuid4Args].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  RandomUuid4Args({
    this.keepers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
    };
  }

  factory RandomUuid4Args.fromMap(Map<String, dynamic> map) {
    return RandomUuid4Args(
      keepers: map['keepers'] == null ? null : ((map['keepers'] as Map).cast<String, String>()).input(),
    );
  }
}

