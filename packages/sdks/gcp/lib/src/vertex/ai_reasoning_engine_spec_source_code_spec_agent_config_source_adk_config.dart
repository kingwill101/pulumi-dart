// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig {
  /// Required. The value of the ADK config in JSON format.
  final pulumi.Input<String> jsonConfig;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig].
  /// [jsonConfig] Required. The value of the ADK config in JSON format.
  const AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig({
    required this.jsonConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonConfig': jsonConfig,
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceAdkConfig(
      jsonConfig: pulumi.Input.fromValue(map['jsonConfig'] as String),
    );
  }
}
