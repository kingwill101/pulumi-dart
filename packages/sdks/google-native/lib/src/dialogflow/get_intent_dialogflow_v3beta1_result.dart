// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_intent_parameter_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_intent_training_phrase_response.dart';

/// Result data returned by getIntent.
class GetIntentDialogflowV3beta1Result {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final String? description;
  /// The human-readable name of the intent, unique within the agent.
  final String? displayName;
  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  final bool? isFallback;
  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys-contextual" means the intent is a contextual intent.
  final Map<String, String>? labels;
  /// The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  final String? name;
  /// The collection of parameters associated with the intent.
  final List<GoogleCloudDialogflowCxV3beta1IntentParameterResponse>? parameters;
  /// The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final int? priority;
  /// The collection of training phrases the agent is trained on to identify the intent.
  final List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse>? trainingPhrases;

  /// Creates a new [GetIntentDialogflowV3beta1Result].
  /// [description] Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  /// [displayName] The human-readable name of the intent, unique within the agent.
  /// [isFallback] Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  /// [labels] The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys-contextual" means the intent is a contextual intent.
  /// [name] The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  /// [parameters] The collection of parameters associated with the intent.
  /// [priority] The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  /// [trainingPhrases] The collection of training phrases the agent is trained on to identify the intent.
  const GetIntentDialogflowV3beta1Result({
    this.description,
    this.displayName,
    this.isFallback,
    this.labels,
    this.name,
    this.parameters,
    this.priority,
    this.trainingPhrases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'isFallback': ?isFallback,
      'labels': ?labels,
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1IntentParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'priority': ?priority,
      'trainingPhrases': ?(() { final guardedValue = trainingPhrases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetIntentDialogflowV3beta1Result.fromMap(Map<String, dynamic> map) {
    return GetIntentDialogflowV3beta1Result(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isFallback: (() { final guardedValue = map['isFallback']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1IntentParameterResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1IntentParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      trainingPhrases: (() { final guardedValue = map['trainingPhrases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
