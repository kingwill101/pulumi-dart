// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_document_processing_config_default_parsing_config_layout_parsing_config.dart';
import 'data_store_document_processing_config_default_parsing_config_ocr_parsing_config.dart';

class DataStoreDocumentProcessingConfigDefaultParsingConfig {
  /// Configurations applied to digital parser.
  final pulumi.Input<Map<String, dynamic>>? digitalParsingConfig;

  /// Configurations applied to layout parser.
  /// Structure is documented below.
  final pulumi.Input<
    DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig
  >?
  layoutParsingConfig;

  /// Configurations applied to OCR parser. Currently it only applies to PDFs.
  /// Structure is documented below.
  final pulumi.Input<
    DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig
  >?
  ocrParsingConfig;

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
      'layoutParsingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig,
            Map<String, dynamic>
          >(layoutParsingConfig, (value) => value.toMap()),
      'ocrParsingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig,
            Map<String, dynamic>
          >(ocrParsingConfig, (value) => value.toMap()),
    };
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfig(
      digitalParsingConfig: (() {
        final guardedValue = map['digitalParsingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      layoutParsingConfig: (() {
        final guardedValue = map['layoutParsingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ocrParsingConfig: (() {
        final guardedValue = map['ocrParsingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
