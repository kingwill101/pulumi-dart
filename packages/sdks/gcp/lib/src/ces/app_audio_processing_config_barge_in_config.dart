// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAudioProcessingConfigBargeInConfig {
  /// If enabled, the agent will adapt its next response based on the assumption
  /// that the user hasn't heard the full preceding agent message.
  /// This should not be used in scenarios where agent responses are displayed
  /// visually.
  final pulumi.Input<bool>? bargeInAwareness;

  /// Creates a new [AppAudioProcessingConfigBargeInConfig].
  /// [bargeInAwareness] If enabled, the agent will adapt its next response based on the assumption
  AppAudioProcessingConfigBargeInConfig({this.bargeInAwareness});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bargeInAwareness': ?bargeInAwareness};
  }

  factory AppAudioProcessingConfigBargeInConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppAudioProcessingConfigBargeInConfig(
      bargeInAwareness: (() {
        final guardedValue = map['bargeInAwareness'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
