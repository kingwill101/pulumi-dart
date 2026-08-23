// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_source_code_spec_agent_config_source.dart';
import 'ai_reasoning_engine_spec_source_code_spec_developer_connect_source.dart';
import 'ai_reasoning_engine_spec_source_code_spec_image_spec.dart';
import 'ai_reasoning_engine_spec_source_code_spec_inline_source.dart';
import 'ai_reasoning_engine_spec_source_code_spec_python_spec.dart';

class AiReasoningEngineSpecSourceCodeSpec {
  /// (Optional, Beta)
  /// Optional. Specification for the deploying from agent config.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecAgentConfigSource>? agentConfigSource;
  /// Specification for source code to be fetched from a Git repository managed through the Developer Connect service.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource>? developerConnectSource;
  /// Configuration for building an image with custom config file.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecImageSpec>? imageSpec;
  /// Source code is provided directly in the request.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecInlineSource>? inlineSource;
  /// Specification for running a Python application from source.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecSourceCodeSpecPythonSpec>? pythonSpec;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpec].
  /// [agentConfigSource] (Optional, Beta)
  /// [developerConnectSource] Specification for source code to be fetched from a Git repository managed through the Developer Connect service.
  /// [imageSpec] Configuration for building an image with custom config file.
  /// [inlineSource] Source code is provided directly in the request.
  /// [pythonSpec] Specification for running a Python application from source.
  const AiReasoningEngineSpecSourceCodeSpec({
    this.agentConfigSource,
    this.developerConnectSource,
    this.imageSpec,
    this.inlineSource,
    this.pythonSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfigSource': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpecAgentConfigSource, Map<String, dynamic>>(agentConfigSource, (value) => value.toMap()),
      'developerConnectSource': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource, Map<String, dynamic>>(developerConnectSource, (value) => value.toMap()),
      'imageSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpecImageSpec, Map<String, dynamic>>(imageSpec, (value) => value.toMap()),
      'inlineSource': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpecInlineSource, Map<String, dynamic>>(inlineSource, (value) => value.toMap()),
      'pythonSpec': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecSourceCodeSpecPythonSpec, Map<String, dynamic>>(pythonSpec, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpec.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpec(
      agentConfigSource: (() { final guardedValue = map['agentConfigSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecAgentConfigSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      developerConnectSource: (() { final guardedValue = map['developerConnectSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageSpec: (() { final guardedValue = map['imageSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecImageSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inlineSource: (() { final guardedValue = map['inlineSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecInlineSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pythonSpec: (() { final guardedValue = map['pythonSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecSourceCodeSpecPythonSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
