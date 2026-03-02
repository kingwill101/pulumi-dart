// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageAdvancedSettingsDtmfSettings {
  /// If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  final pulumi.Input<bool>? enabled;
  /// The digit that terminates a DTMF digit sequence.
  final pulumi.Input<String>? finishDigit;
  /// Max length of DTMF digits.
  final pulumi.Input<int>? maxDigits;

  /// Creates a new [CxPageAdvancedSettingsDtmfSettings].
  /// [enabled] If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  /// [finishDigit] The digit that terminates a DTMF digit sequence.
  /// [maxDigits] Max length of DTMF digits.
  CxPageAdvancedSettingsDtmfSettings({
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

  factory CxPageAdvancedSettingsDtmfSettings.fromMap(Map<String, dynamic> map) {
    return CxPageAdvancedSettingsDtmfSettings(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      finishDigit: map['finishDigit'] == null ? null : (map['finishDigit']! as String).input(),
      maxDigits: map['maxDigits'] == null ? null : (map['maxDigits']! as int).input(),
    );
  }
}

