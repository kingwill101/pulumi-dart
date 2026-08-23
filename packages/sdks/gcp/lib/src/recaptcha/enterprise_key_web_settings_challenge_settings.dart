// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_key_web_settings_challenge_settings_action_setting.dart';
import 'enterprise_key_web_settings_challenge_settings_default_settings.dart';

class EnterpriseKeyWebSettingsChallengeSettings {
  /// The action to score threshold map. The action name should be the same as the action name passed in the `data-action` attribute. Action names are case-insensitive.
  /// Structure is documented below.
  final pulumi.Input<List<EnterpriseKeyWebSettingsChallengeSettingsActionSetting>>? actionSettings;
  /// Defines when a challenge is triggered by default.
  /// Structure is documented below.
  final pulumi.Input<EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings> defaultSettings;

  /// Creates a new [EnterpriseKeyWebSettingsChallengeSettings].
  /// [actionSettings] The action to score threshold map. The action name should be the same as the action name passed in the `data-action` attribute. Action names are case-insensitive.
  /// [defaultSettings] Defines when a challenge is triggered by default.
  const EnterpriseKeyWebSettingsChallengeSettings({
    this.actionSettings,
    required this.defaultSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionSettings': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseKeyWebSettingsChallengeSettingsActionSetting>, List<Map<String, dynamic>>>(actionSettings, (value) => pulumi.Input.encodeList<EnterpriseKeyWebSettingsChallengeSettingsActionSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSettings': pulumi.Input.mapInputValue<EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings, Map<String, dynamic>>(defaultSettings, (value) => value.toMap()),
    };
  }

  factory EnterpriseKeyWebSettingsChallengeSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyWebSettingsChallengeSettings(
      actionSettings: (() { final guardedValue = map['actionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseKeyWebSettingsChallengeSettingsActionSetting>(guardedValue, (value) => EnterpriseKeyWebSettingsChallengeSettingsActionSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultSettings: pulumi.Input.fromValue(EnterpriseKeyWebSettingsChallengeSettingsDefaultSettings.fromMap((map['defaultSettings']! as Map).cast<String, dynamic>())),
    );
  }
}
