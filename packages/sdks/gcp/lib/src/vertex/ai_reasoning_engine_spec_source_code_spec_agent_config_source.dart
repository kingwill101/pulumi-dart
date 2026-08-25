// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_source_code_spec_agent_config_source_adk_config.dart';
import 'ai_reasoning_engine_spec_source_code_spec_agent_config_source_inline_source.dart';

class AiReasoningEngineSpecSourceCodeSpecAgentConfigSource {
  /// Required. Configuration for the Agent Development Kit (ADK).
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig?>? adkConfig;
  /// Optional. Any additional files needed to interpret the config.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource?>? inlineSource;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecAgentConfigSource].
  /// [adkConfig] Required. Configuration for the Agent Development Kit (ADK).
  /// [inlineSource] Optional. Any additional files needed to interpret the config.
  const AiReasoningEngineSpecSourceCodeSpecAgentConfigSource({
    this.adkConfig,
    this.inlineSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adkConfig': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig, Map<String, dynamic>>(adkConfig, (value) => value.toMap()),
      'inlineSource': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource, Map<String, dynamic>>(inlineSource, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecAgentConfigSource.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecAgentConfigSource(
      adkConfig: (() { final guardedValue = map['adkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inlineSource: (() { final guardedValue = map['inlineSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
