// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings {
  /// If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  final pulumi.Input<bool>? enabled;
  /// Endpoint timeout setting for matching dtmf input to regex.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.500s".
  final pulumi.Input<String>? endpointingTimeoutDuration;
  /// The digit that terminates a DTMF digit sequence.
  final pulumi.Input<String>? finishDigit;
  /// Interdigit timeout setting for matching dtmf input to regex.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.500s".
  final pulumi.Input<String>? interdigitTimeoutDuration;
  /// Max length of DTMF digits.
  final pulumi.Input<int>? maxDigits;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings].
  /// [enabled] If true, incoming audio is processed for DTMF (dual tone multi frequtectency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will de the event (e.g. a "3" was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance).
  /// [endpointingTimeoutDuration] Endpoint timeout setting for matching dtmf input to regex.
  /// [finishDigit] The digit that terminates a DTMF digit sequence.
  /// [interdigitTimeoutDuration] Interdigit timeout setting for matching dtmf input to regex.
  /// [maxDigits] Max length of DTMF digits.
  const CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings({
    this.enabled,
    this.endpointingTimeoutDuration,
    this.finishDigit,
    this.interdigitTimeoutDuration,
    this.maxDigits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endpointingTimeoutDuration': ?endpointingTimeoutDuration,
      'finishDigit': ?finishDigit,
      'interdigitTimeoutDuration': ?interdigitTimeoutDuration,
      'maxDigits': ?maxDigits,
    };
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings.fromMap(Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsDtmfSettings(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointingTimeoutDuration: (() { final guardedValue = map['endpointingTimeoutDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishDigit: (() { final guardedValue = map['finishDigit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interdigitTimeoutDuration: (() { final guardedValue = map['interdigitTimeoutDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDigits: (() { final guardedValue = map['maxDigits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
