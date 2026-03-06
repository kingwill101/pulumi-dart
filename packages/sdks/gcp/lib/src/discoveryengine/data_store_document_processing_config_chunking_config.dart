// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_document_processing_config_chunking_config_layout_based_chunking_config.dart';

class DataStoreDocumentProcessingConfigChunkingConfig {
  /// Configuration for the layout based chunking.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig>? layoutBasedChunkingConfig;

  /// Creates a new [DataStoreDocumentProcessingConfigChunkingConfig].
  /// [layoutBasedChunkingConfig] Configuration for the layout based chunking.
  const DataStoreDocumentProcessingConfigChunkingConfig({
    this.layoutBasedChunkingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'layoutBasedChunkingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, Map<String, dynamic>>(layoutBasedChunkingConfig, (value) => value.toMap()),
    };
  }

  factory DataStoreDocumentProcessingConfigChunkingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigChunkingConfig(
      layoutBasedChunkingConfig: (() { final guardedValue = map['layoutBasedChunkingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

