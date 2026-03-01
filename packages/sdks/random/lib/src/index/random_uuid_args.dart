// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_random_uuid_random_uuid_args_doc}
/// The set of arguments for RandomUuid.
/// {@endtemplate}
/// {@macro pulumi_index_random_uuid_random_uuid_args_doc}
class RandomUuidArgs {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// Creates a new [RandomUuidArgs].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  RandomUuidArgs({
    pulumi.Output<Map<String, String>>? keepers,
  }) :
      keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
    };
  }

  factory RandomUuidArgs.fromMap(Map<String, dynamic> map) {
    return RandomUuidArgs(
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
    );
  }
}

