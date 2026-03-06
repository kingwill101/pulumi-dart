// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';

/// UpgradeStatus contains information about upgradeAppliance operation.
class UpgradeStatusResponse {
  /// Provides details on the state of the upgrade operation in case of an error.
  final pulumi.Input<StatusResponse> error;
  /// The version from which we upgraded.
  final pulumi.Input<String> previousVersion;
  /// The time the operation was started.
  final pulumi.Input<String> startTime;
  /// The state of the upgradeAppliance operation.
  final pulumi.Input<String> state;
  /// The version to upgrade to.
  final pulumi.Input<String> version;

  /// Creates a new [UpgradeStatusResponse].
  /// [error] Provides details on the state of the upgrade operation in case of an error.
  /// [previousVersion] The version from which we upgraded.
  /// [startTime] The time the operation was started.
  /// [state] The state of the upgradeAppliance operation.
  /// [version] The version to upgrade to.
  const UpgradeStatusResponse({
    required this.error,
    required this.previousVersion,
    required this.startTime,
    required this.state,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'previousVersion': previousVersion,
      'startTime': startTime,
      'state': state,
      'version': version,
    };
  }

  factory UpgradeStatusResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeStatusResponse(
      error: pulumi.Input.fromValue(StatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      previousVersion: pulumi.Input.fromValue(map['previousVersion'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

