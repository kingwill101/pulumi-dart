// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings {
  /// A challenge is triggered if the end-user score is below that threshold. Value must be between 0 and 1 (inclusive).
  final pulumi.Input<double> scoreThreshold;

  /// Creates a new [EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings].
  /// [scoreThreshold] A challenge is triggered if the end-user score is below that threshold. Value must be between 0 and 1 (inclusive).
  const EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings({
    required this.scoreThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scoreThreshold': scoreThreshold,
    };
  }

  factory EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings(
      scoreThreshold: pulumi.Input.fromValue(map['scoreThreshold'] as double),
    );
  }
}
