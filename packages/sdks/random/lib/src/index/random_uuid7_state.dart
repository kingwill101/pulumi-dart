// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomUuid7 resources.
class RandomUuid7State {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;
  /// The generated uuid presented in string format.
  final pulumi.Input<String>? result;

  /// Creates a new [RandomUuid7State].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [result] The generated uuid presented in string format.
  RandomUuid7State({
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

  factory RandomUuid7State.fromMap(Map<String, dynamic> map) {
    return RandomUuid7State(
      keepers: map['keepers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['keepers'] as Map).cast<String, String>()),
      result: map['result'] == null ? null : pulumi.Output.create<String>(map['result'] as String),
    );
  }
}

