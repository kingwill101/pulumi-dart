// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomUuid resources.
class RandomUuidState {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The generated uuid presented in string format.
  final pulumi.Input<String>? result;

  /// Creates a new [RandomUuidState].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [result] The generated uuid presented in string format.
  RandomUuidState({
    pulumi.Output<Map<String, String>>? keepers,
    pulumi.Output<String>? result,
  }) :
      keepers = pulumi.Input.asOptionalInput<Map<String, String>>(keepers),
      result = pulumi.Input.asOptionalInput<String>(result);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepers': ?keepers,
      'result': ?result,
    };
  }

  factory RandomUuidState.fromMap(Map<String, dynamic> map) {
    return RandomUuidState(
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
      result: map['result'] == null ? null : pulumi.Output.create<String>(map['result'] as String),
    );
  }
}

