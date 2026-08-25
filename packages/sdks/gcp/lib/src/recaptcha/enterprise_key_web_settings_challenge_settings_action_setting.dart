// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseKeyWebSettingsChallengeSettingsActionSetting {
  /// The action name.
  final pulumi.Input<String> action;
  /// A challenge is triggered if the end-user score is below that threshold. Value must be between 0 and 1 (inclusive).
  final pulumi.Input<double> scoreThreshold;

  /// Creates a new [EnterpriseKeyWebSettingsChallengeSettingsActionSetting].
  /// [action] The action name.
  /// [scoreThreshold] A challenge is triggered if the end-user score is below that threshold. Value must be between 0 and 1 (inclusive).
  const EnterpriseKeyWebSettingsChallengeSettingsActionSetting({
    required this.action,
    required this.scoreThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'scoreThreshold': scoreThreshold,
    };
  }

  factory EnterpriseKeyWebSettingsChallengeSettingsActionSetting.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWebSettingsChallengeSettingsActionSetting(
      action: pulumi.Input.fromValue(map['action'] as String),
      scoreThreshold: pulumi.Input.fromValue((map['scoreThreshold'] as num).toDouble()),
    );
  }
}
