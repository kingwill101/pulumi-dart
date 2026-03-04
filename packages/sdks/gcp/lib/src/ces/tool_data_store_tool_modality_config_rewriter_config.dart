// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_modality_config_rewriter_config_model_settings.dart';

class ToolDataStoreToolModalityConfigRewriterConfig {
  /// Whether the rewriter is disabled.
  final pulumi.Input<bool>? disabled;

  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolModalityConfigRewriterConfigModelSettings>
  modelSettings;

  /// The prompt definition. If not set, default prompt will be used.
  final pulumi.Input<String>? prompt;

  /// Creates a new [ToolDataStoreToolModalityConfigRewriterConfig].
  /// [disabled] Whether the rewriter is disabled.
  /// [modelSettings] Model settings contains various configurations for the LLM model.
  /// [prompt] The prompt definition. If not set, default prompt will be used.
  ToolDataStoreToolModalityConfigRewriterConfig({
    this.disabled,
    required this.modelSettings,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'modelSettings':
          pulumi.Input.mapInputValue<
            ToolDataStoreToolModalityConfigRewriterConfigModelSettings,
            Map<String, dynamic>
          >(modelSettings, (value) => value.toMap()),
      'prompt': ?prompt,
    };
  }

  factory ToolDataStoreToolModalityConfigRewriterConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ToolDataStoreToolModalityConfigRewriterConfig(
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      modelSettings: pulumi.Input.fromValue(
        ToolDataStoreToolModalityConfigRewriterConfigModelSettings.fromMap(
          (map['modelSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      prompt: (() {
        final guardedValue = map['prompt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
