// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_modality_config_summarization_config_model_settings.dart';

class ToolDataStoreToolModalityConfigSummarizationConfig {
  /// Whether summarization is disabled.
  final pulumi.Input<bool>? disabled;
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolModalityConfigSummarizationConfigModelSettings>? modelSettings;
  /// The prompt definition. If not set, default prompt will be used.
  final pulumi.Input<String>? prompt;

  /// Creates a new [ToolDataStoreToolModalityConfigSummarizationConfig].
  /// [disabled] Whether summarization is disabled.
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [prompt] The prompt definition. If not set, default prompt will be used.
  const ToolDataStoreToolModalityConfigSummarizationConfig({
    this.disabled,
    this.modelSettings,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolModalityConfigSummarizationConfigModelSettings, Map<String, dynamic>>(modelSettings, (value) => value.toMap()),
      'prompt': ?prompt,
    };
  }

  factory ToolDataStoreToolModalityConfigSummarizationConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfigSummarizationConfig(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolModalityConfigSummarizationConfigModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

