// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig {
  /// If true, will use native text instead of OCR text on pages containing native text.
  final pulumi.Input<bool>? useNativeText;

  /// Creates a new [DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig].
  /// [useNativeText] If true, will use native text instead of OCR text on pages containing native text.
  DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig({
    this.useNativeText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useNativeText': ?useNativeText,
    };
  }

  factory DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig(
      useNativeText: map['useNativeText'] == null ? null : (map['useNativeText'] as bool).input(),
    );
  }
}

