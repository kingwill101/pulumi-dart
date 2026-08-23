// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ReleaseReadyCondition contains information around the status of the Release. If a release is not ready, you cannot create a rollout with the release.
class ReleaseReadyConditionResponse {
  /// True if the Release is in a valid state. Otherwise at least one condition in `ReleaseCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Release.
  final pulumi.Input<bool> status;

  /// Creates a new [ReleaseReadyConditionResponse].
  /// [status] True if the Release is in a valid state. Otherwise at least one condition in `ReleaseCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Release.
  const ReleaseReadyConditionResponse({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory ReleaseReadyConditionResponse.fromMap(Map<String, dynamic> map) {
    return ReleaseReadyConditionResponse(
      status: pulumi.Input.fromValue(map['status'] as bool),
    );
  }
}
