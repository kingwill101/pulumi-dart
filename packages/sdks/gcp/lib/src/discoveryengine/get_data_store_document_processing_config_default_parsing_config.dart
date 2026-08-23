// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_store_document_processing_config_default_parsing_config_layout_parsing_config.dart';
import 'get_data_store_document_processing_config_default_parsing_config_ocr_parsing_config.dart';

class GetDataStoreDocumentProcessingConfigDefaultParsingConfig {
  /// Configurations applied to digital parser.
  final pulumi.Input<List<Map<String, dynamic>>> digitalParsingConfigs;
  /// Configurations applied to layout parser.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig>> layoutParsingConfigs;
  /// Configurations applied to OCR parser. Currently it only applies to PDFs.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig>> ocrParsingConfigs;

  /// Creates a new [GetDataStoreDocumentProcessingConfigDefaultParsingConfig].
  /// [digitalParsingConfigs] Configurations applied to digital parser.
  /// [layoutParsingConfigs] Configurations applied to layout parser.
  /// [ocrParsingConfigs] Configurations applied to OCR parser. Currently it only applies to PDFs.
  const GetDataStoreDocumentProcessingConfigDefaultParsingConfig({
    required this.digitalParsingConfigs,
    required this.layoutParsingConfigs,
    required this.ocrParsingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalParsingConfigs': digitalParsingConfigs,
      'layoutParsingConfigs': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig>, List<Map<String, dynamic>>>(layoutParsingConfigs, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ocrParsingConfigs': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig>, List<Map<String, dynamic>>>(ocrParsingConfigs, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataStoreDocumentProcessingConfigDefaultParsingConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfigDefaultParsingConfig(
      digitalParsingConfigs: pulumi.Input.fromValue((map['digitalParsingConfigs'] as List).cast<Map<String, dynamic>>()),
      layoutParsingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig>(map['layoutParsingConfigs']!, (value) => GetDataStoreDocumentProcessingConfigDefaultParsingConfigLayoutParsingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ocrParsingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig>(map['ocrParsingConfigs']!, (value) => GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
