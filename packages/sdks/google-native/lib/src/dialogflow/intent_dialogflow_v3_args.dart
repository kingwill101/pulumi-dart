// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_intent_parameter.dart';
import 'google_cloud_dialogflow_cx_v3_intent_training_phrase.dart';

/// {@template pulumi_dialogflow_v3_intent_dialogflow_v3_args_doc}
/// The set of arguments for Intent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_intent_dialogflow_v3_args_doc}
class IntentDialogflowV3Args {
  final pulumi.Input<String> agentId;
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final pulumi.Input<String>? description;
  /// The human-readable name of the intent, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  final pulumi.Input<bool>? isFallback;
  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  final pulumi.Input<Map<String, String>>? labels;
  /// The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  final pulumi.Input<String>? name;
  /// The collection of parameters associated with the intent.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3IntentParameter>>? parameters;
  /// The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// The collection of training phrases the agent is trained on to identify the intent.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>>? trainingPhrases;

  /// Creates a new [IntentDialogflowV3Args].
  /// [agentId] Required.
  /// [description] Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  /// [displayName] The human-readable name of the intent, unique within the agent.
  /// [isFallback] Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  /// [labels] The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  /// [languageCode] The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  /// [parameters] The collection of parameters associated with the intent.
  /// [priority] The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  /// [project] Optional.
  /// [trainingPhrases] The collection of training phrases the agent is trained on to identify the intent.
  IntentDialogflowV3Args({
    required pulumi.Output<String> agentId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? isFallback,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<GoogleCloudDialogflowCxV3IntentParameter>>? parameters,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>>? trainingPhrases,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      isFallback = pulumi.Input.asOptionalInput<bool>(isFallback),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3IntentParameter>>(parameters),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      trainingPhrases = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>>(trainingPhrases);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'description': ?description,
      'displayName': displayName,
      'isFallback': ?isFallback,
      'labels': ?labels,
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3IntentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3IntentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': ?priority,
      'project': ?project,
      'trainingPhrases': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>, List<Map<String, dynamic>>>(trainingPhrases, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3IntentTrainingPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IntentDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return IntentDialogflowV3Args(
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      isFallback: map['isFallback'] == null ? null : pulumi.Output.create<bool>(map['isFallback'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<GoogleCloudDialogflowCxV3IntentParameter>>(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3IntentParameter>(map['parameters'], (value) => GoogleCloudDialogflowCxV3IntentParameter.fromMap((value as Map).cast<String, dynamic>()))),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      trainingPhrases: map['trainingPhrases'] == null ? null : pulumi.Output.create<List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>>(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3IntentTrainingPhrase>(map['trainingPhrases'], (value) => GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

