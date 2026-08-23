// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_modality_config_grounding_config.dart';
import 'app_version_snapshot_tool_data_store_tool_modality_config_rewriter_config.dart';
import 'app_version_snapshot_tool_data_store_tool_modality_config_summarization_config.dart';

class AppVersionSnapshotToolDataStoreToolModalityConfig {
  /// (Output)
  /// Grounding configuration.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig>>? groundingConfigs;
  /// (Output)
  /// The modality type.
  /// Possible values:
  /// TEXT
  /// AUDIO
  final pulumi.Input<String>? modalityType;
  /// (Output)
  /// Rewriter configuration.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig>>? rewriterConfigs;
  /// (Output)
  /// Summarization configuration.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig>>? summarizationConfigs;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolModalityConfig].
  /// [groundingConfigs] (Output)
  /// [modalityType] (Output)
  /// [rewriterConfigs] (Output)
  /// [summarizationConfigs] (Output)
  const AppVersionSnapshotToolDataStoreToolModalityConfig({
    this.groundingConfigs,
    this.modalityType,
    this.rewriterConfigs,
    this.summarizationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groundingConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig>, List<Map<String, dynamic>>>(groundingConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modalityType': ?modalityType,
      'rewriterConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig>, List<Map<String, dynamic>>>(rewriterConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'summarizationConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig>, List<Map<String, dynamic>>>(summarizationConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotToolDataStoreToolModalityConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolModalityConfig(
      groundingConfigs: (() { final guardedValue = map['groundingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig>(guardedValue, (value) => AppVersionSnapshotToolDataStoreToolModalityConfigGroundingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modalityType: (() { final guardedValue = map['modalityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rewriterConfigs: (() { final guardedValue = map['rewriterConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig>(guardedValue, (value) => AppVersionSnapshotToolDataStoreToolModalityConfigRewriterConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      summarizationConfigs: (() { final guardedValue = map['summarizationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig>(guardedValue, (value) => AppVersionSnapshotToolDataStoreToolModalityConfigSummarizationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
