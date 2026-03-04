// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_intent_parameter.dart';
import 'cx_intent_training_phrase.dart';

/// Input properties used for looking up and filtering CxIntent resources.
class CxIntentState {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final pulumi.Input<String>? description;

  /// The human-readable name of the intent, unique within the agent.
  final pulumi.Input<String>? displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
  /// The Default Negative Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// &gt; Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_negative_intent = true` because they will compete to control a single Default Negative Intent resource in GCP.
  final pulumi.Input<bool>? isDefaultNegativeIntent;

  /// Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
  /// The Default Welcome Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// &gt; Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_welcome_intent = true` because they will compete to control a single Default Welcome Intent resource in GCP.
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

  /// The unique identifier of the intent.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;.
  final pulumi.Input<String>? name;

  /// The collection of parameters associated with the intent.
  /// Structure is documented below.
  final pulumi.Input<List<CxIntentParameter>>? parameters;

  /// The agent to create an intent for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;

  /// The priority of this intent. Higher numbers represent higher priorities.
  /// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
  /// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// The collection of training phrases the agent is trained on to identify the intent.
  /// Structure is documented below.
  final pulumi.Input<List<CxIntentTrainingPhrase>>? trainingPhrases;

  /// Creates a new [CxIntentState].
  /// [description] Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  /// [displayName] The human-readable name of the intent, unique within the agent.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [isDefaultNegativeIntent] Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
  /// [isDefaultWelcomeIntent] Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
  /// [isFallback] Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
  /// [labels] The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
  /// [languageCode] The language of the following fields in intent:
  /// [name] The unique identifier of the intent.
  /// [parameters] The collection of parameters associated with the intent.
  /// [parent] The agent to create an intent for.
  /// [priority] The priority of this intent. Higher numbers represent higher priorities.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [trainingPhrases] The collection of training phrases the agent is trained on to identify the intent.
  CxIntentState({
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.isDefaultNegativeIntent,
    this.isDefaultWelcomeIntent,
    this.isFallback,
    this.labels,
    this.languageCode,
    this.name,
    this.parameters,
    this.parent,
    this.priority,
    this.pulumiLabels,
    this.trainingPhrases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'isDefaultNegativeIntent': ?isDefaultNegativeIntent,
      'isDefaultWelcomeIntent': ?isDefaultWelcomeIntent,
      'isFallback': ?isFallback,
      'labels': ?labels,
      'languageCode': ?languageCode,
      'name': ?name,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<CxIntentParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  CxIntentParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parent': ?parent,
      'priority': ?priority,
      'pulumiLabels': ?pulumiLabels,
      'trainingPhrases':
          ?pulumi.Input.mapOptionalInputValue<
            List<CxIntentTrainingPhrase>,
            List<Map<String, dynamic>>
          >(
            trainingPhrases,
            (value) =>
                pulumi.Input.encodeList<
                  CxIntentTrainingPhrase,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CxIntentState.fromMap(Map<String, dynamic> map) {
    return CxIntentState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      isDefaultNegativeIntent: (() {
        final guardedValue = map['isDefaultNegativeIntent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isDefaultWelcomeIntent: (() {
        final guardedValue = map['isDefaultWelcomeIntent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isFallback: (() {
        final guardedValue = map['isFallback'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CxIntentParameter>(
            guardedValue,
            (value) => CxIntentParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trainingPhrases: (() {
        final guardedValue = map['trainingPhrases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CxIntentTrainingPhrase>(
            guardedValue,
            (value) => CxIntentTrainingPhrase.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
