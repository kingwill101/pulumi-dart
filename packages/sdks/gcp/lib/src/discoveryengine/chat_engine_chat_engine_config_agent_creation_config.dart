// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChatEngineChatEngineConfigAgentCreationConfig {
  /// Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  final pulumi.Input<String>? business;
  /// The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  final pulumi.Input<String> defaultLanguageCode;
  /// Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine.
  final pulumi.Input<String>? location;
  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  final pulumi.Input<String> timeZone;

  /// Creates a new [ChatEngineChatEngineConfigAgentCreationConfig].
  /// [business] Name of the company, organization or other entity that the agent represents. Used for knowledge connector LLM prompt and for knowledge search.
  /// [defaultLanguageCode] The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.
  /// [location] Agent location for Agent creation, currently supported values: global/us/eu, it needs to be the same region as the Chat Engine.
  /// [timeZone] The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  const ChatEngineChatEngineConfigAgentCreationConfig({
    this.business,
    required this.defaultLanguageCode,
    this.location,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'business': ?business,
      'defaultLanguageCode': defaultLanguageCode,
      'location': ?location,
      'timeZone': timeZone,
    };
  }

  factory ChatEngineChatEngineConfigAgentCreationConfig.fromMap(Map<String, dynamic> map) {
    return ChatEngineChatEngineConfigAgentCreationConfig(
      business: (() { final guardedValue = map['business']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLanguageCode: pulumi.Input.fromValue(map['defaultLanguageCode'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
