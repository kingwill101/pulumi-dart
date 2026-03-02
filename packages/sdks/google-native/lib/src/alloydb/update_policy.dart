// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_policy_mode.dart';

/// Policy to be used while updating the instance.
class UpdatePolicy {
  /// Mode for updating the instance.
  final pulumi.Input<UpdatePolicyMode>? mode;

  /// Creates a new [UpdatePolicy].
  /// [mode] Mode for updating the instance.
  UpdatePolicy({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<UpdatePolicyMode, String>(mode, (value) => value.value),
    };
  }

  factory UpdatePolicy.fromMap(Map<String, dynamic> map) {
    return UpdatePolicy(
      mode: map['mode'] == null ? null : (UpdatePolicyMode.fromValue(map['mode'] as String)).input(),
    );
  }
}

