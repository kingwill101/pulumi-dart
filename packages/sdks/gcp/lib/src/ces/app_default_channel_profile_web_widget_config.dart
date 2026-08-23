// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppDefaultChannelProfileWebWidgetConfig {
  /// The modality of the web widget.
  /// Possible values:
  /// UNKNOWN_MODALITY
  /// CHAT_AND_VOICE
  /// VOICE_ONLY
  /// CHAT_ONLY
  final pulumi.Input<String>? modality;
  /// The theme of the web widget.
  /// Possible values:
  /// UNKNOWN_THEME
  /// LIGHT
  /// DARK
  final pulumi.Input<String>? theme;
  /// The title of the web widget.
  final pulumi.Input<String>? webWidgetTitle;

  /// Creates a new [AppDefaultChannelProfileWebWidgetConfig].
  /// [modality] The modality of the web widget.
  /// [theme] The theme of the web widget.
  /// [webWidgetTitle] The title of the web widget.
  const AppDefaultChannelProfileWebWidgetConfig({
    this.modality,
    this.theme,
    this.webWidgetTitle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modality': ?modality,
      'theme': ?theme,
      'webWidgetTitle': ?webWidgetTitle,
    };
  }

  factory AppDefaultChannelProfileWebWidgetConfig.fromMap(Map<String, dynamic> map) {
    return AppDefaultChannelProfileWebWidgetConfig(
      modality: (() { final guardedValue = map['modality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      theme: (() { final guardedValue = map['theme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webWidgetTitle: (() { final guardedValue = map['webWidgetTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
