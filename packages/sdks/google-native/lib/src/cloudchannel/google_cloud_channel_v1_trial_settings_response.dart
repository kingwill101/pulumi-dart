// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for trial offers.
class GoogleCloudChannelV1TrialSettingsResponse {
  /// Date when the trial ends. The value is in milliseconds using the UNIX Epoch format. See an example [Epoch converter](https://www.epochconverter.com).
  final pulumi.Input<String> endTime;

  /// Determines if the entitlement is in a trial or not: * `true` - The entitlement is in trial. * `false` - The entitlement is not in trial.
  final pulumi.Input<bool> trial;

  /// Creates a new [GoogleCloudChannelV1TrialSettingsResponse].
  /// [endTime] Date when the trial ends. The value is in milliseconds using the UNIX Epoch format. See an example [Epoch converter](https://www.epochconverter.com).
  /// [trial] Determines if the entitlement is in a trial or not: * `true` - The entitlement is in trial. * `false` - The entitlement is not in trial.
  GoogleCloudChannelV1TrialSettingsResponse({
    required this.endTime,
    required this.trial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endTime': endTime, 'trial': trial};
  }

  factory GoogleCloudChannelV1TrialSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudChannelV1TrialSettingsResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      trial: pulumi.Input.fromValue(map['trial'] as bool),
    );
  }
}
