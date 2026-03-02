// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_modality_config_rewriter_config_model_setting.dart';

class AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig {
  /// (Output)
  /// Whether summarization is disabled.
  final pulumi.Input<bool>? disabled;
  /// (Output)
  /// Model settings contains various configurations for the LLM model.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting>>? modelSettings;
  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final pulumi.Input<String>? prompt;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig].
  /// [disabled] (Output)
  /// [modelSettings] (Output)
  /// [prompt] (Output)
  AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig({
    this.disabled,
    this.modelSettings,
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'modelSettings': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting>, List<Map<String, dynamic>>>(modelSettings, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prompt': ?prompt,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      modelSettings: map['modelSettings'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting>(map['modelSettings'], (value) => AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfigModelSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prompt: map['prompt'] == null ? null : (map['prompt'] as String).input(),
    );
  }
}

