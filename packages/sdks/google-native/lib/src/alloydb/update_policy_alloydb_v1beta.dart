// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_policy_mode_alloydb_v1beta.dart';

/// Policy to be used while updating the instance.
class UpdatePolicyAlloydbV1beta {
  /// Mode for updating the instance.
  final pulumi.Input<UpdatePolicyModeAlloydbV1beta>? mode;

  /// Creates a new [UpdatePolicyAlloydbV1beta].
  /// [mode] Mode for updating the instance.
  UpdatePolicyAlloydbV1beta({this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode':
          ?pulumi.Input.mapOptionalInputValue<
            UpdatePolicyModeAlloydbV1beta,
            String
          >(mode, (value) => value.wireValue),
    };
  }

  factory UpdatePolicyAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return UpdatePolicyAlloydbV1beta(
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UpdatePolicyModeAlloydbV1beta.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
