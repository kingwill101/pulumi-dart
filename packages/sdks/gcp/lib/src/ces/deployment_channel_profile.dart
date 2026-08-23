// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_channel_profile_persona_property.dart';
import 'deployment_channel_profile_web_widget_config.dart';

class DeploymentChannelProfile {
  /// The type of the channel profile.
  /// Possible values:
  /// UNKNOWN
  /// WEB_UI
  /// API
  /// TWILIO
  /// GOOGLE_TELEPHONY_PLATFORM
  /// CONTACT_CENTER_AS_A_SERVICE
  /// FIVE9
  /// CONTACT_CENTER_INTEGRATION
  final pulumi.Input<String>? channelType;
  /// Whether to disable user barge-in control in the conversation.
  /// - **true**: User interruptions are disabled while the agent is speaking.
  /// - **false**: The agent retains automatic control over when the user can
  /// interrupt.
  final pulumi.Input<bool>? disableBargeInControl;
  /// Whether to disable DTMF (dual-tone multi-frequency).
  final pulumi.Input<bool>? disableDtmf;
  /// Represents the persona property of a channel.
  /// Structure is documented below.
  final pulumi.Input<DeploymentChannelProfilePersonaProperty>? personaProperty;
  /// The unique identifier of the channel profile.
  final pulumi.Input<String>? profileId;
  /// Message for configuration for the web widget.
  /// Structure is documented below.
  final pulumi.Input<DeploymentChannelProfileWebWidgetConfig>? webWidgetConfig;

  /// Creates a new [DeploymentChannelProfile].
  /// [channelType] The type of the channel profile.
  /// [disableBargeInControl] Whether to disable user barge-in control in the conversation.
  /// [disableDtmf] Whether to disable DTMF (dual-tone multi-frequency).
  /// [personaProperty] Represents the persona property of a channel.
  /// [profileId] The unique identifier of the channel profile.
  /// [webWidgetConfig] Message for configuration for the web widget.
  const DeploymentChannelProfile({
    this.channelType,
    this.disableBargeInControl,
    this.disableDtmf,
    this.personaProperty,
    this.profileId,
    this.webWidgetConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelType': ?channelType,
      'disableBargeInControl': ?disableBargeInControl,
      'disableDtmf': ?disableDtmf,
      'personaProperty': ?pulumi.Input.mapOptionalInputValue<DeploymentChannelProfilePersonaProperty, Map<String, dynamic>>(personaProperty, (value) => value.toMap()),
      'profileId': ?profileId,
      'webWidgetConfig': ?pulumi.Input.mapOptionalInputValue<DeploymentChannelProfileWebWidgetConfig, Map<String, dynamic>>(webWidgetConfig, (value) => value.toMap()),
    };
  }

  factory DeploymentChannelProfile.fromMap(Map<String, dynamic> map) {
    return DeploymentChannelProfile(
      channelType: (() { final guardedValue = map['channelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableBargeInControl: (() { final guardedValue = map['disableBargeInControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableDtmf: (() { final guardedValue = map['disableDtmf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      personaProperty: (() { final guardedValue = map['personaProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentChannelProfilePersonaProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webWidgetConfig: (() { final guardedValue = map['webWidgetConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentChannelProfileWebWidgetConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
