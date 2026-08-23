// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_store_document_processing_config_chunking_config_layout_based_chunking_config.dart';

class GetDataStoreDocumentProcessingConfigChunkingConfig {
  /// Configuration for the layout based chunking.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig>> layoutBasedChunkingConfigs;

  /// Creates a new [GetDataStoreDocumentProcessingConfigChunkingConfig].
  /// [layoutBasedChunkingConfigs] Configuration for the layout based chunking.
  const GetDataStoreDocumentProcessingConfigChunkingConfig({
    required this.layoutBasedChunkingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'layoutBasedChunkingConfigs': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig>, List<Map<String, dynamic>>>(layoutBasedChunkingConfigs, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataStoreDocumentProcessingConfigChunkingConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfigChunkingConfig(
      layoutBasedChunkingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig>(map['layoutBasedChunkingConfigs']!, (value) => GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
