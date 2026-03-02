// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_document_processing_config_default_parsing_config_layout_parsing_config.dart';
import 'data_store_document_processing_config_default_parsing_config_ocr_parsing_config.dart';

class DataStoreDocumentProcessingConfigDefaultParsingConfig {
  /// Configurations applied to digital parser.
  final pulumi.Input<Map<String, dynamic>>? digitalParsingConfig;
  /// Configurations applied to layout parser.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig>? layoutParsingConfig;
  /// Configurations applied to OCR parser. Currently it only applies to PDFs.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig>? ocrParsingConfig;

  /// Creates a new [DataStoreDocumentProcessingConfigDefaultParsingConfig].
  /// [digitalParsingConfig] Configurations applied to digital parser.
  /// [layoutParsingConfig] Configurations applied to layout parser.
  /// [ocrParsingConfig] Configurations applied to OCR parser. Currently it only applies to PDFs.
  DataStoreDocumentProcessingConfigDefaultParsingConfig({
    this.digitalParsingConfig,
    this.layoutParsingConfig,
    this.ocrParsingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalParsingConfig': ?digitalParsingConfig,
      'layoutParsingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig, Map<String, dynamic>>(layoutParsingConfig, (value) => value.toMap()),
      'ocrParsingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig, Map<String, dynamic>>(ocrParsingConfig, (value) => value.toMap()),
    };
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfig(
      digitalParsingConfig: map['digitalParsingConfig'] == null ? null : ((map['digitalParsingConfig'] as Map).cast<String, dynamic>()).input(),
      layoutParsingConfig: map['layoutParsingConfig'] == null ? null : (DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig.fromMap((map['layoutParsingConfig'] as Map).cast<String, dynamic>())).input(),
      ocrParsingConfig: map['ocrParsingConfig'] == null ? null : (DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig.fromMap((map['ocrParsingConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

