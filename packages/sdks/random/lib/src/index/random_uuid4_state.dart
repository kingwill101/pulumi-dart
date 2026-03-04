// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RandomUuid4 resources.
class RandomUuid4State {
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The generated uuid presented in string format.
  final pulumi.Input<String>? result;

  /// Creates a new [RandomUuid4State].
  /// [keepers] Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  /// [result] The generated uuid presented in string format.
  RandomUuid4State({this.keepers, this.result});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keepers': ?keepers, 'result': ?result};
  }

  factory RandomUuid4State.fromMap(Map<String, dynamic> map) {
    return RandomUuid4State(
      keepers: (() {
        final guardedValue = map['keepers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      result: (() {
        final guardedValue = map['result'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
