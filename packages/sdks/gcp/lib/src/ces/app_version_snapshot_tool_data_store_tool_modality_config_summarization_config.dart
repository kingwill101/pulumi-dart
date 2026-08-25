// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_modality_config_summarization_config_model_setting.dart';

class AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig {
  /// (Output)
  /// Whether summarization is disabled.
  final pulumi.Input<bool?>? disabled;
  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting>?>? modelSettings;
  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final pulumi.Input<String?>? prompt;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig].
  /// [disabled] (Output)
  /// [modelSettings] (Output)
  /// [prompt] (Output)
  const AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig({
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
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modelSettings: (() { final guardedValue = map['modelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting>(guardedValue, (value) => AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfigModelSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
