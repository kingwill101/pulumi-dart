// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_agent_agent_args_doc}
/// The set of arguments for Agent.
/// {@endtemplate}
/// {@macro pulumi_diagflow_agent_agent_args_doc}
class AgentArgs {
  /// API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
  /// different service endpoints for different API versions. However, bots connectors and webhook calls will follow
  /// the specified API version.
  /// * API_VERSION_V1: Legacy V1 API.
  /// * API_VERSION_V2: V2 API.
  /// * API_VERSION_V2_BETA_1: V2beta1 API.
  /// Possible values are: `API_VERSION_V1`, `API_VERSION_V2`, `API_VERSION_V2_BETA_1`.
  final pulumi.Input<String>? apiVersion;
  /// The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered
  /// into this field, the Dialogflow will save the image in the backend. The address of the backend image returned
  /// from the API will be shown in the [avatarUriBackend] field.
  final pulumi.Input<String>? avatarUri;
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent,
  /// you can tune the machine learning classification threshold. If the returned score value is less than the threshold
  /// value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be
  /// triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
  /// default of 0.3 is used.
  final pulumi.Input<double>? classificationThreshold;
  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  final pulumi.Input<String> defaultLanguageCode;
  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The name of this agent.
  final pulumi.Input<String> displayName;
  /// Determines whether this agent should log conversation queries.
  final pulumi.Input<bool>? enableLogging;
  /// Determines how intents are detected from user queries.
  /// * MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates
  /// syntax and composite entities.
  /// * MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones
  /// using @sys.any or very large developer entities.
  /// Possible values are: `MATCH_MODE_HYBRID`, `MATCH_MODE_ML_ONLY`.
  final pulumi.Input<String>? matchMode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The list of all languages supported by this agent (except for the defaultLanguageCode).
  final pulumi.Input<List<String>>? supportedLanguageCodes;
  /// The agent tier. If not specified, TIER_STANDARD is assumed.
  /// * TIER_STANDARD: Standard tier.
  /// * TIER_ENTERPRISE: Enterprise tier (Essentials).
  /// * TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
  /// NOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between
  /// the the provider state and Dialogflow if the agent tier is changed outside of the provider.
  final pulumi.Input<String>? tier;
  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  final pulumi.Input<String> timeZone;

  /// Creates a new [AgentArgs].
  /// [apiVersion] API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
  /// [avatarUri] The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered
  /// [classificationThreshold] To filter out false positive results and still get variety in matched natural language inputs for your agent,
  /// [defaultLanguageCode] The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// [description] The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The name of this agent.
  /// [enableLogging] Determines whether this agent should log conversation queries.
  /// [matchMode] Determines how intents are detected from user queries.
  /// [project] The ID of the project in which the resource belongs.
  /// [supportedLanguageCodes] The list of all languages supported by this agent (except for the defaultLanguageCode).
  /// [tier] The agent tier. If not specified, TIER_STANDARD is assumed.
  /// [timeZone] The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  AgentArgs({
    this.apiVersion,
    this.avatarUri,
    this.classificationThreshold,
    required this.defaultLanguageCode,
    this.description,
    required this.displayName,
    this.enableLogging,
    this.matchMode,
    this.project,
    this.supportedLanguageCodes,
    this.tier,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'avatarUri': ?avatarUri,
      'classificationThreshold': ?classificationThreshold,
      'defaultLanguageCode': defaultLanguageCode,
      'description': ?description,
      'displayName': displayName,
      'enableLogging': ?enableLogging,
      'matchMode': ?matchMode,
      'project': ?project,
      'supportedLanguageCodes': ?supportedLanguageCodes,
      'tier': ?tier,
      'timeZone': timeZone,
    };
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      avatarUri: (() { final guardedValue = map['avatarUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classificationThreshold: (() { final guardedValue = map['classificationThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      defaultLanguageCode: pulumi.Input.fromValue(map['defaultLanguageCode'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchMode: (() { final guardedValue = map['matchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedLanguageCodes: (() { final guardedValue = map['supportedLanguageCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}

