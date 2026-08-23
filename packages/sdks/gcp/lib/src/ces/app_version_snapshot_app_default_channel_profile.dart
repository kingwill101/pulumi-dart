// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_default_channel_profile_persona_property.dart';
import 'app_version_snapshot_app_default_channel_profile_web_widget_config.dart';

class AppVersionSnapshotAppDefaultChannelProfile {
  /// (Output)
  /// The type of the channel profile.
  /// Possible values:
  /// UNKNOWN
  /// WEB_UI
  /// API
  /// TWILIO
  /// GOOGLE_TELEPHONY_PLATFORM
  /// CONTACT_CENTER_AS_A_SERVICE
  final pulumi.Input<String>? channelType;
  /// (Output)
  /// Whether to disable user barge-in in the conversation.
  /// - true: User interruptions are disabled while the agent is speaking.
  /// - false: The agent retains automatic control over when the user can interrupt.
  final pulumi.Input<bool>? disableBargeInControl;
  /// (Output)
  /// Whether to disable DTMF (dual-tone multi-frequency).
  final pulumi.Input<bool>? disableDtmf;
  /// (Output)
  /// Represents the persona property of a channel.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppDefaultChannelProfilePersonaProperty>>? personaProperties;
  /// (Output)
  /// The unique identifier of the channel profile.
  final pulumi.Input<String>? profileId;
  /// (Output)
  /// Message for configuration for the web widget.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig>>? webWidgetConfigs;

  /// Creates a new [AppVersionSnapshotAppDefaultChannelProfile].
  /// [channelType] (Output)
  /// [disableBargeInControl] (Output)
  /// [disableDtmf] (Output)
  /// [personaProperties] (Output)
  /// [profileId] (Output)
  /// [webWidgetConfigs] (Output)
  const AppVersionSnapshotAppDefaultChannelProfile({
    this.channelType,
    this.disableBargeInControl,
    this.disableDtmf,
    this.personaProperties,
    this.profileId,
    this.webWidgetConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelType': ?channelType,
      'disableBargeInControl': ?disableBargeInControl,
      'disableDtmf': ?disableDtmf,
      'personaProperties': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppDefaultChannelProfilePersonaProperty>, List<Map<String, dynamic>>>(personaProperties, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppDefaultChannelProfilePersonaProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileId': ?profileId,
      'webWidgetConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig>, List<Map<String, dynamic>>>(webWidgetConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotAppDefaultChannelProfile.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppDefaultChannelProfile(
      channelType: (() { final guardedValue = map['channelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableBargeInControl: (() { final guardedValue = map['disableBargeInControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableDtmf: (() { final guardedValue = map['disableDtmf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      personaProperties: (() { final guardedValue = map['personaProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppDefaultChannelProfilePersonaProperty>(guardedValue, (value) => AppVersionSnapshotAppDefaultChannelProfilePersonaProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webWidgetConfigs: (() { final guardedValue = map['webWidgetConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig>(guardedValue, (value) => AppVersionSnapshotAppDefaultChannelProfileWebWidgetConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
