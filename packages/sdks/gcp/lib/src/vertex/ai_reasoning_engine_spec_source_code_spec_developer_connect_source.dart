// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_source_code_spec_developer_connect_source_config.dart';

class AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource {
  /// The Developer Connect configuration that defines the specific repository, revision, and directory to use as the source code root.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig> config;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource].
  /// [config] The Developer Connect configuration that defines the specific repository, revision, and directory to use as the source code root.
  const AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource({
    required this.config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource(
      config: pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
    );
  }
}
