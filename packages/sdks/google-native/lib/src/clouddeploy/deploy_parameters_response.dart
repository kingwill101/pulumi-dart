// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeployParameters contains deploy parameters information.
class DeployParametersResponse {
  /// Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  final pulumi.Input<Map<String, String>> matchTargetLabels;

  /// Values are deploy parameters in key-value pairs.
  final pulumi.Input<Map<String, String>> values;

  /// Creates a new [DeployParametersResponse].
  /// [matchTargetLabels] Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  /// [values] Values are deploy parameters in key-value pairs.
  DeployParametersResponse({
    required this.matchTargetLabels,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchTargetLabels': matchTargetLabels,
      'values': values,
    };
  }

  factory DeployParametersResponse.fromMap(Map<String, dynamic> map) {
    return DeployParametersResponse(
      matchTargetLabels: pulumi.Input.fromValue(
        (map['matchTargetLabels'] as Map).cast<String, String>(),
      ),
      values: pulumi.Input.fromValue(
        (map['values'] as Map).cast<String, String>(),
      ),
    );
  }
}
