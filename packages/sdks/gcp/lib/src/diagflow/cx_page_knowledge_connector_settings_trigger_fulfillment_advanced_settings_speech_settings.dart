// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings {
  /// Sensitivity of the speech model that detects the end of speech. Scale from 0 to 100.
  final pulumi.Input<int>? endpointerSensitivity;
  /// Mapping from language to Speech-to-Text model. The mapped Speech-to-Text model will be selected for requests from its corresponding language. For more information, see [Speech models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
  /// An object containing a list of **"key": value** pairs. Example: **{ "name": "wrench", "mass": "1.3kg", "count": "3" }**.
  final pulumi.Input<Map<String, String>>? models;
  /// Timeout before detecting no speech.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.500s".
  final pulumi.Input<String>? noSpeechTimeout;
  /// Use timeout based endpointing, interpreting endpointer sensitivity as seconds of timeout value.
  final pulumi.Input<bool>? useTimeoutBasedEndpointing;

  /// Creates a new [CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings].
  /// [endpointerSensitivity] Sensitivity of the speech model that detects the end of speech. Scale from 0 to 100.
  /// [models] Mapping from language to Speech-to-Text model. The mapped Speech-to-Text model will be selected for requests from its corresponding language. For more information, see [Speech models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
  /// [noSpeechTimeout] Timeout before detecting no speech.
  /// [useTimeoutBasedEndpointing] Use timeout based endpointing, interpreting endpointer sensitivity as seconds of timeout value.
  CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings({
    this.endpointerSensitivity,
    this.models,
    this.noSpeechTimeout,
    this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointerSensitivity': ?endpointerSensitivity,
      'models': ?models,
      'noSpeechTimeout': ?noSpeechTimeout,
      'useTimeoutBasedEndpointing': ?useTimeoutBasedEndpointing,
    };
  }

  factory CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings.fromMap(Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettingsTriggerFulfillmentAdvancedSettingsSpeechSettings(
      endpointerSensitivity: map['endpointerSensitivity'] == null ? null : (map['endpointerSensitivity'] as int).input(),
      models: map['models'] == null ? null : ((map['models'] as Map).cast<String, String>()).input(),
      noSpeechTimeout: map['noSpeechTimeout'] == null ? null : (map['noSpeechTimeout'] as String).input(),
      useTimeoutBasedEndpointing: map['useTimeoutBasedEndpointing'] == null ? null : (map['useTimeoutBasedEndpointing'] as bool).input(),
    );
  }
}

