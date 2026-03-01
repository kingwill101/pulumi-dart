// ignore_for_file: unused_element, unnecessary_cast


class CxPageFormParameterAdvancedSettingsDtmfSettings {
  /// If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  final bool? enabled;
  /// The digit that terminates a DTMF digit sequence.
  final String? finishDigit;
  /// Max length of DTMF digits.
  final int? maxDigits;

  /// Creates a new [CxPageFormParameterAdvancedSettingsDtmfSettings].
  /// [enabled] If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  /// [finishDigit] The digit that terminates a DTMF digit sequence.
  /// [maxDigits] Max length of DTMF digits.
  CxPageFormParameterAdvancedSettingsDtmfSettings({
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

  factory CxPageFormParameterAdvancedSettingsDtmfSettings.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterAdvancedSettingsDtmfSettings(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      finishDigit: map['finishDigit'] == null ? null : map['finishDigit'] as String,
      maxDigits: map['maxDigits'] == null ? null : map['maxDigits'] as int,
    );
  }
}

