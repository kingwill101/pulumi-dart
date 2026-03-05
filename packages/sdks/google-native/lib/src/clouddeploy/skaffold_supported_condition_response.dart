// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SkaffoldSupportedCondition contains information about when support for the release's version of skaffold ends.
class SkaffoldSupportedConditionResponse {
  /// The time at which this release's version of skaffold will enter maintenance mode.
  final pulumi.Input<String> maintenanceModeTime;
  /// The skaffold support state for this release's version of skaffold.
  final pulumi.Input<String> skaffoldSupportState;
  /// True if the version of skaffold used by this release is supported.
  final pulumi.Input<bool> status;
  /// The time at which this release's version of skaffold will no longer be supported.
  final pulumi.Input<String> supportExpirationTime;

  /// Creates a new [SkaffoldSupportedConditionResponse].
  /// [maintenanceModeTime] The time at which this release's version of skaffold will enter maintenance mode.
  /// [skaffoldSupportState] The skaffold support state for this release's version of skaffold.
  /// [status] True if the version of skaffold used by this release is supported.
  /// [supportExpirationTime] The time at which this release's version of skaffold will no longer be supported.
  SkaffoldSupportedConditionResponse({
    required this.maintenanceModeTime,
    required this.skaffoldSupportState,
    required this.status,
    required this.supportExpirationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceModeTime': maintenanceModeTime,
      'skaffoldSupportState': skaffoldSupportState,
      'status': status,
      'supportExpirationTime': supportExpirationTime,
    };
  }

  factory SkaffoldSupportedConditionResponse.fromMap(Map<String, dynamic> map) {
    return SkaffoldSupportedConditionResponse(
      maintenanceModeTime: pulumi.Input.fromValue(map['maintenanceModeTime'] as String),
      skaffoldSupportState: pulumi.Input.fromValue(map['skaffoldSupportState'] as String),
      status: pulumi.Input.fromValue(map['status'] as bool),
      supportExpirationTime: pulumi.Input.fromValue(map['supportExpirationTime'] as String),
    );
  }
}

