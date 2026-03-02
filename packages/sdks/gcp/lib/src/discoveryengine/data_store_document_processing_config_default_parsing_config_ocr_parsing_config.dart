// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig {
  /// If true, will use native text instead of OCR text on pages containing native text.
  final pulumi.Input<bool>? useNativeText;

  /// Creates a new [DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig].
  /// [useNativeText] If true, will use native text instead of OCR text on pages containing native text.
  DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig({
    this.useNativeText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useNativeText': ?useNativeText,
    };
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig(
      useNativeText: map['useNativeText'] == null ? null : (map['useNativeText'] as bool).input(),
    );
  }
}

