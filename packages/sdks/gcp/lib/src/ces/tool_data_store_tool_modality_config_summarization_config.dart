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
  ToolDataStoreToolModalityConfigSummarizationConfig({
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
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      modelSettings: map['modelSettings'] == null ? null : (ToolDataStoreToolModalityConfigSummarizationConfigModelSettings.fromMap((map['modelSettings']! as Map).cast<String, dynamic>())).input(),
      prompt: map['prompt'] == null ? null : (map['prompt']! as String).input(),
    );
  }
}

