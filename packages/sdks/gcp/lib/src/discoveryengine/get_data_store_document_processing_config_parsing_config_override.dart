// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_store_document_processing_config_parsing_config_override_layout_parsing_config.dart';
import 'get_data_store_document_processing_config_parsing_config_override_ocr_parsing_config.dart';

class GetDataStoreDocumentProcessingConfigParsingConfigOverride {
  /// Configurations applied to digital parser.
  final pulumi.Input<List<Map<String, dynamic>>> digitalParsingConfigs;
  final pulumi.Input<String> fileType;
  /// Configurations applied to layout parser.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig>> layoutParsingConfigs;
  /// Configurations applied to OCR parser. Currently it only applies to PDFs.
  final pulumi.Input<List<GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig>> ocrParsingConfigs;

  /// Creates a new [GetDataStoreDocumentProcessingConfigParsingConfigOverride].
  /// [digitalParsingConfigs] Configurations applied to digital parser.
  /// [fileType] Required.
  /// [layoutParsingConfigs] Configurations applied to layout parser.
  /// [ocrParsingConfigs] Configurations applied to OCR parser. Currently it only applies to PDFs.
  const GetDataStoreDocumentProcessingConfigParsingConfigOverride({
    required this.digitalParsingConfigs,
    required this.fileType,
    required this.layoutParsingConfigs,
    required this.ocrParsingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digitalParsingConfigs': digitalParsingConfigs,
      'fileType': fileType,
      'layoutParsingConfigs': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig>, List<Map<String, dynamic>>>(layoutParsingConfigs, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ocrParsingConfigs': pulumi.Input.mapInputValue<List<GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig>, List<Map<String, dynamic>>>(ocrParsingConfigs, (value) => pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataStoreDocumentProcessingConfigParsingConfigOverride.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfigParsingConfigOverride(
      digitalParsingConfigs: pulumi.Input.fromValue((map['digitalParsingConfigs'] as List).cast<Map<String, dynamic>>()),
      fileType: pulumi.Input.fromValue(map['fileType'] as String),
      layoutParsingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig>(map['layoutParsingConfigs']!, (value) => GetDataStoreDocumentProcessingConfigParsingConfigOverrideLayoutParsingConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ocrParsingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig>(map['ocrParsingConfigs']!, (value) => GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
