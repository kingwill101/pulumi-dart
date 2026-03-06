// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_document_processing_config_parsing_config_override_layout_parsing_config.dart';
import 'data_store_document_processing_config_parsing_config_override_ocr_parsing_config.dart';

class DataStoreDocumentProcessingConfigParsingConfigOverride {
  /// Configurations applied to digital parser.
  final pulumi.Input<Map<String, dynamic>>? digitalParsingConfig;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> fileType;
  /// Configurations applied to layout parser.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig>? layoutParsingConfig;
  /// Configurations applied to OCR parser. Currently it only applies to PDFs.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig>? ocrParsingConfig;

  /// Creates a new [DataStoreDocumentProcessingConfigParsingConfigOverride].
  /// [digitalParsingConfig] Configurations applied to digital parser.
  /// [fileType] The identifier for this object. Format specified above.
  /// [layoutParsingConfig] Configurations applied to layout parser.
  /// [ocrParsingConfig] Configurations applied to OCR parser. Currently it only applies to PDFs.
  const DataStoreDocumentProcessingConfigParsingConfigOverride({
    this.digitalParsingConfig,
    required this.fileType,
    this.layoutParsingConfig,
    this.ocrParsingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalParsingConfig': ?digitalParsingConfig,
      'fileType': fileType,
      'layoutParsingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig, Map<String, dynamic>>(layoutParsingConfig, (value) => value.toMap()),
      'ocrParsingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig, Map<String, dynamic>>(ocrParsingConfig, (value) => value.toMap()),
    };
  }

  factory DataStoreDocumentProcessingConfigParsingConfigOverride.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigParsingConfigOverride(
      digitalParsingConfig: (() { final guardedValue = map['digitalParsingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      fileType: pulumi.Input.fromValue(map['fileType'] as String),
      layoutParsingConfig: (() { final guardedValue = map['layoutParsingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ocrParsingConfig: (() { final guardedValue = map['ocrParsingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

