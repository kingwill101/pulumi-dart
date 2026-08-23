// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_document_processing_config_chunking_config.dart';
import 'data_store_document_processing_config_default_parsing_config.dart';
import 'data_store_document_processing_config_parsing_config_override.dart';

class DataStoreDocumentProcessingConfig {
  /// Whether chunking mode is enabled.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfigChunkingConfig>? chunkingConfig;
  /// Configurations for default Document parser. If not specified, this resource
  /// will be configured to use a default DigitalParsingConfig, and the default parsing
  /// config will be applied to all file types for Document parsing.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfigDefaultParsingConfig>? defaultParsingConfig;
  /// (Output)
  /// The full resource name of the Document Processing Config. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/documentProcessingConfig`.
  final pulumi.Input<String>? name;
  /// Map from file type to override the default parsing configuration based on the file type. Supported keys:
  final pulumi.Input<List<DataStoreDocumentProcessingConfigParsingConfigOverride>>? parsingConfigOverrides;

  /// Creates a new [DataStoreDocumentProcessingConfig].
  /// [chunkingConfig] Whether chunking mode is enabled.
  /// [defaultParsingConfig] Configurations for default Document parser. If not specified, this resource
  /// [name] (Output)
  /// [parsingConfigOverrides] Map from file type to override the default parsing configuration based on the file type. Supported keys:
  const DataStoreDocumentProcessingConfig({
    this.chunkingConfig,
    this.defaultParsingConfig,
    this.name,
    this.parsingConfigOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfigChunkingConfig, Map<String, dynamic>>(chunkingConfig, (value) => value.toMap()),
      'defaultParsingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfigDefaultParsingConfig, Map<String, dynamic>>(defaultParsingConfig, (value) => value.toMap()),
      'name': ?name,
      'parsingConfigOverrides': ?pulumi.Input.mapOptionalInputValue<List<DataStoreDocumentProcessingConfigParsingConfigOverride>, List<Map<String, dynamic>>>(parsingConfigOverrides, (value) => pulumi.Input.encodeList<DataStoreDocumentProcessingConfigParsingConfigOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataStoreDocumentProcessingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfig(
      chunkingConfig: (() { final guardedValue = map['chunkingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataStoreDocumentProcessingConfigChunkingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultParsingConfig: (() { final guardedValue = map['defaultParsingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataStoreDocumentProcessingConfigDefaultParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parsingConfigOverrides: (() { final guardedValue = map['parsingConfigOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataStoreDocumentProcessingConfigParsingConfigOverride>(guardedValue, (value) => DataStoreDocumentProcessingConfigParsingConfigOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
