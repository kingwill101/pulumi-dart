// ignore_for_file: unused_element, unnecessary_cast


class CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings {
  /// Enables consent-based end-user input redaction, if true, a pre-defined session parameter **$session.params.conversation-redaction** will be used to determine if the utterance should be redacted.
  final bool? enableConsentBasedRedaction;
  /// Enables DF Interaction logging.
  final bool? enableInteractionLogging;
  /// Enables Google Cloud Logging.
  final bool? enableStackdriverLogging;

  /// Creates a new [CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings].
  /// [enableConsentBasedRedaction] Enables consent-based end-user input redaction, if true, a pre-defined session parameter **$session.params.conversation-redaction** will be used to determine if the utterance should be redacted.
  /// [enableInteractionLogging] Enables DF Interaction logging.
  /// [enableStackdriverLogging] Enables Google Cloud Logging.
  CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings({
    this.enableConsentBasedRedaction,
    this.enableInteractionLogging,
    this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConsentBasedRedaction': ?enableConsentBasedRedaction,
      'enableInteractionLogging': ?enableInteractionLogging,
      'enableStackdriverLogging': ?enableStackdriverLogging,
    };
  }

  factory CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsLoggingSettings(
      enableConsentBasedRedaction: map['enableConsentBasedRedaction'] == null ? null : map['enableConsentBasedRedaction'] as bool,
      enableInteractionLogging: map['enableInteractionLogging'] == null ? null : map['enableInteractionLogging'] as bool,
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : map['enableStackdriverLogging'] as bool,
    );
  }
}

