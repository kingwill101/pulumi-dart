// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_uuid7_random_uuid7_args_doc}
/// The set of arguments for RandomUuid7.
/// {@endtemplate}
/// {@macro pulumi_index_random_uuid7_random_uuid7_args_doc}
class RandomUuid7Args {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// Creates a new [RandomUuid7Args].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  RandomUuid7Args({
    this.keepers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
    };
  }

  factory RandomUuid7Args.fromMap(Map<String, dynamic> map) {
    return RandomUuid7Args(
      keepers: (() { final guardedValue = map['keepers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

