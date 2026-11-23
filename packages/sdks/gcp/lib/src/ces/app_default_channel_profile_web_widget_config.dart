// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_default_channel_profile_web_widget_config_security_settings.dart';

class AppDefaultChannelProfileWebWidgetConfig {
  /// The modality of the web widget.
  /// Possible values:
  /// UNKNOWN_MODALITY
  /// CHAT_AND_VOICE
  /// VOICE_ONLY
  /// CHAT_ONLY
  final pulumi.Input<String?>? modality;
  /// The security settings of the web widget.
  /// Structure is documented below.
  final pulumi.Input<AppDefaultChannelProfileWebWidgetConfigSecuritySettings?>? securitySettings;
  /// The theme of the web widget.
  /// Possible values:
  /// UNKNOWN_THEME
  /// LIGHT
  /// DARK
  final pulumi.Input<String?>? theme;
  /// The title of the web widget.
  final pulumi.Input<String?>? webWidgetTitle;

  /// Creates a new [AppDefaultChannelProfileWebWidgetConfig].
  /// [modality] The modality of the web widget.
  /// [securitySettings] The security settings of the web widget.
  /// [theme] The theme of the web widget.
  /// [webWidgetTitle] The title of the web widget.
  const AppDefaultChannelProfileWebWidgetConfig({
    this.modality,
    this.securitySettings,
    this.theme,
    this.webWidgetTitle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modality': ?modality,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<AppDefaultChannelProfileWebWidgetConfigSecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'theme': ?theme,
      'webWidgetTitle': ?webWidgetTitle,
    };
  }

  factory AppDefaultChannelProfileWebWidgetConfig.fromMap(Map<String, dynamic> map) {
    return AppDefaultChannelProfileWebWidgetConfig(
      modality: (() { final guardedValue = map['modality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppDefaultChannelProfileWebWidgetConfigSecuritySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      theme: (() { final guardedValue = map['theme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webWidgetTitle: (() { final guardedValue = map['webWidgetTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
