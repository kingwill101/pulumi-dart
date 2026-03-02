// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_intent_parameter.dart';
import 'cx_intent_training_phrase.dart';

/// {@template pulumi_diagflow_cx_intent_cx_intent_args_doc}
/// The set of arguments for CxIntent.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_intent_cx_intent_args_doc}
class CxIntentArgs {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final pulumi.Input<String>? description;
  /// The human-readable name of the intent, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
  /// The Default Negative Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_negative_intent = true` because they will compete to control a single Default Negative Intent resource in GCP.
  final pulumi.Input<bool>? isDefaultNegativeIntent;
  /// Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
  /// The Default Welcome Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_welcome_intent = true` because they will compete to control a single Default Welcome Intent resource in GCP.
  final pulumi.Input<bool>? isDefaultWelcomeIntent;
  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
  /// Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  /// To manage the fallback intent, set `is_default_negative_intent = true`
  final pulumi.Input<bool>? isFallback;
  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
  /// Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The language of the following fields in intent:
  /// Intent.training_phrases.parts.text
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  /// The collection of parameters associated with the intent.
  /// Structure is documented below.
  final pulumi.Input<List<CxIntentParameter>>? parameters;
  /// The agent to create an intent for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;
  /// The priority of this intent. Higher numbers represent higher priorities.
  /// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
  /// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;
  /// The collection of training phrases the agent is trained on to identify the intent.
  /// Structure is documented below.
  final pulumi.Input<List<CxIntentTrainingPhrase>>? trainingPhrases;

  /// Creates a new [CxIntentArgs].
  /// [description] Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  /// [displayName] The human-readable name of the intent, unique within the agent.
  /// [isDefaultNegativeIntent] Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
  /// [isDefaultWelcomeIntent] Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
  /// [isFallback] Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
  /// [labels] The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
  /// [languageCode] The language of the following fields in intent:
  /// [parameters] The collection of parameters associated with the intent.
  /// [parent] The agent to create an intent for.
  /// [priority] The priority of this intent. Higher numbers represent higher priorities.
  /// [trainingPhrases] The collection of training phrases the agent is trained on to identify the intent.
  CxIntentArgs({
    this.description,
    required this.displayName,
    this.isDefaultNegativeIntent,
    this.isDefaultWelcomeIntent,
    this.isFallback,
    this.labels,
    this.languageCode,
    this.parameters,
    this.parent,
    this.priority,
    this.trainingPhrases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'isDefaultNegativeIntent': ?isDefaultNegativeIntent,
      'isDefaultWelcomeIntent': ?isDefaultWelcomeIntent,
      'isFallback': ?isFallback,
      'labels': ?labels,
      'languageCode': ?languageCode,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<CxIntentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<CxIntentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': ?parent,
      'priority': ?priority,
      'trainingPhrases': ?pulumi.Input.mapOptionalInputValue<List<CxIntentTrainingPhrase>, List<Map<String, dynamic>>>(trainingPhrases, (value) => pulumi.Input.encodeList<CxIntentTrainingPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CxIntentArgs.fromMap(Map<String, dynamic> map) {
    return CxIntentArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      isDefaultNegativeIntent: map['isDefaultNegativeIntent'] == null ? null : (map['isDefaultNegativeIntent'] as bool).input(),
      isDefaultWelcomeIntent: map['isDefaultWelcomeIntent'] == null ? null : (map['isDefaultWelcomeIntent'] as bool).input(),
      isFallback: map['isFallback'] == null ? null : (map['isFallback'] as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<CxIntentParameter>(map['parameters'], (value) => CxIntentParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      trainingPhrases: map['trainingPhrases'] == null ? null : (pulumi.Input.decodeList<CxIntentTrainingPhrase>(map['trainingPhrases'], (value) => CxIntentTrainingPhrase.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

