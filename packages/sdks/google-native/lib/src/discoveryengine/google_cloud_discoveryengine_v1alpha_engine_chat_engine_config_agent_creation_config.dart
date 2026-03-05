// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configurations for generating a Dialogflow agent. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.
class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig {
  /// Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  final pulumi.Input<String>? business;
  /// The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  final pulumi.Input<String> defaultLanguageCode;
  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  final pulumi.Input<String> timeZone;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig].
  /// [business] Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  /// [defaultLanguageCode] The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  /// [timeZone] The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig({
    this.business,
    required this.defaultLanguageCode,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'business': ?business,
      'defaultLanguageCode': defaultLanguageCode,
      'timeZone': timeZone,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig(
      business: (() { final guardedValue = map['business']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLanguageCode: pulumi.Input.fromValue(map['defaultLanguageCode'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}

