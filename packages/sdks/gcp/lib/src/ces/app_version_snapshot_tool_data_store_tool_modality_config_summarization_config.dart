// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_modality_config_summarization_config_model_setting.dart';

class AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig {
  /// (Output)
  /// Whether summarization is disabled.
  final pulumi.Input<bool>? disabled;
  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting>>? modelSettings;
  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final pulumi.Input<String>? prompt;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig].
  /// [disabled] (Output)
  /// [modelSettings] (Output)
  /// [prompt] (Output)
  AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig({
    this.disabled,
    this.modelSettings,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting>, List<Map<String, dynamic>>>(modelSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prompt': ?prompt,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      modelSettings: map['modelSettings'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting>(map['modelSettings'], (value) => AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prompt: map['prompt'] == null ? null : (map['prompt'] as String).input(),
    );
  }
}

