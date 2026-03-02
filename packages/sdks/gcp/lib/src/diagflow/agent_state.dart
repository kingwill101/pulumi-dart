// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Agent resources.
class AgentState {
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
  /// The URI of the agent's avatar as returned from the API. Output only. To provide an image URL for the agent avatar,
  /// the [avatarUri] field can be used.
  final pulumi.Input<String>? avatarUriBackend;
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent,
  /// you can tune the machine learning classification threshold. If the returned score value is less than the threshold
  /// value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be
  /// triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
  /// default of 0.3 is used.
  final pulumi.Input<double>? classificationThreshold;
  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  final pulumi.Input<String>? defaultLanguageCode;
  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;
  /// The name of this agent.
  final pulumi.Input<String>? displayName;
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
  final pulumi.Input<String>? timeZone;

  /// Creates a new [AgentState].
  /// [apiVersion] API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
  /// [avatarUri] The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered
  /// [avatarUriBackend] The URI of the agent's avatar as returned from the API. Output only. To provide an image URL for the agent avatar,
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
  AgentState({
    this.apiVersion,
    this.avatarUri,
    this.avatarUriBackend,
    this.classificationThreshold,
    this.defaultLanguageCode,
    this.description,
    this.displayName,
    this.enableLogging,
    this.matchMode,
    this.project,
    this.supportedLanguageCodes,
    this.tier,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'avatarUri': ?avatarUri,
      'avatarUriBackend': ?avatarUriBackend,
      'classificationThreshold': ?classificationThreshold,
      'defaultLanguageCode': ?defaultLanguageCode,
      'description': ?description,
      'displayName': ?displayName,
      'enableLogging': ?enableLogging,
      'matchMode': ?matchMode,
      'project': ?project,
      'supportedLanguageCodes': ?supportedLanguageCodes,
      'tier': ?tier,
      'timeZone': ?timeZone,
    };
  }

  factory AgentState.fromMap(Map<String, dynamic> map) {
    return AgentState(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      avatarUri: map['avatarUri'] == null ? null : (map['avatarUri']! as String).input(),
      avatarUriBackend: map['avatarUriBackend'] == null ? null : (map['avatarUriBackend']! as String).input(),
      classificationThreshold: map['classificationThreshold'] == null ? null : (map['classificationThreshold']! as double).input(),
      defaultLanguageCode: map['defaultLanguageCode'] == null ? null : (map['defaultLanguageCode']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging']! as bool).input(),
      matchMode: map['matchMode'] == null ? null : (map['matchMode']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      supportedLanguageCodes: map['supportedLanguageCodes'] == null ? null : ((map['supportedLanguageCodes']! as List).cast<String>()).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

