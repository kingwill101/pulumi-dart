// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define behaviors for DTMF (dual tone multi frequency).
class GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings {
  /// If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  final pulumi.Input<bool>? enabled;

  /// The digit that terminates a DTMF digit sequence.
  final pulumi.Input<String>? finishDigit;

  /// Max length of DTMF digits.
  final pulumi.Input<int>? maxDigits;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings].
  /// [enabled] If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  /// [finishDigit] The digit that terminates a DTMF digit sequence.
  /// [maxDigits] Max length of DTMF digits.
  GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings({
    this.enabled,
    this.finishDigit,
    this.maxDigits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'finishDigit': ?finishDigit,
      'maxDigits': ?maxDigits,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1AdvancedSettingsDtmfSettings(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      finishDigit: (() {
        final guardedValue = map['finishDigit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxDigits: (() {
        final guardedValue = map['maxDigits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
