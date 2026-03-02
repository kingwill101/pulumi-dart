// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configurations for generating a Dialogflow agent. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.
class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse {
  /// Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  final pulumi.Input<String> business;
  /// The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  final pulumi.Input<String> defaultLanguageCode;
  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  final pulumi.Input<String> timeZone;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse].
  /// [business] Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  /// [defaultLanguageCode] The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  /// [timeZone] The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse({
    required this.business,
    required this.defaultLanguageCode,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'business': business,
      'defaultLanguageCode': defaultLanguageCode,
      'timeZone': timeZone,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfigResponse(
      business: (map['business'] as String).input(),
      defaultLanguageCode: (map['defaultLanguageCode'] as String).input(),
      timeZone: (map['timeZone'] as String).input(),
    );
  }
}

