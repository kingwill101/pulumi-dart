// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_store_document_processing_config_chunking_config.dart';
import 'get_data_store_document_processing_config_default_parsing_config.dart';
import 'get_data_store_document_processing_config_parsing_config_override.dart';

class GetDataStoreDocumentProcessingConfig {
  /// Whether chunking mode is enabled.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigChunkingConfig>> chunkingConfigs;
  /// Configurations for default Document parser. If not specified, this resource
  /// will be configured to use a default DigitalParsingConfig, and the default parsing
  /// config will be applied to all file types for Document parsing.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigDefaultParsingConfig>> defaultParsingConfigs;
  /// The full resource name of the Document Processing Config. Format:
  /// 'projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/documentProcessingConfig'.
  final pulumi.Input<String> name;
  /// Map from file type to override the default parsing configuration based on the file type. Supported keys:
  /// * 'pdf': Override parsing config for PDF files, either digital parsing, ocr parsing or layout parsing is supported.
  /// * 'html': Override parsing config for HTML files, only digital parsing and or layout parsing are supported.
  /// * 'docx': Override parsing config for DOCX files, only digital parsing and or layout parsing are supported.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigParsingConfigOverride>> parsingConfigOverrides;

  /// Creates a new [GetDataStoreDocumentProcessingConfig].
  /// [chunkingConfigs] Whether chunking mode is enabled.
  /// [defaultParsingConfigs] Configurations for default Document parser. If not specified, this resource
  /// [name] The full resource name of the Document Processing Config. Format:
  /// [parsingConfigOverrides] Map from file type to override the default parsing configuration based on the file type. Supported keys:
  const GetDataStoreDocumentProcessingConfig({
    required this.chunkingConfigs,
    required this.defaultParsingConfigs,
    required this.name,
    required this.parsingConfigOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkingConfigs': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigChunkingConfig>, List<Map<String, dynamic>>>(chunkingConfigs, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigChunkingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultParsingConfigs': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigDefaultParsingConfig>, List<Map<String, dynamic>>>(defaultParsingConfigs, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigDefaultParsingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'parsingConfigOverrides': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigParsingConfigOverride>, List<Map<String, dynamic>>>(parsingConfigOverrides, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigParsingConfigOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataStoreDocumentProcessingConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfig(
      chunkingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigChunkingConfig>(map['chunkingConfigs']!, (value) => GetDataStoreDocumentProcessingConfigChunkingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      defaultParsingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigDefaultParsingConfig>(map['defaultParsingConfigs']!, (value) => GetDataStoreDocumentProcessingConfigDefaultParsingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      parsingConfigOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigParsingConfigOverride>(map['parsingConfigOverrides']!, (value) => GetDataStoreDocumentProcessingConfigParsingConfigOverride.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
