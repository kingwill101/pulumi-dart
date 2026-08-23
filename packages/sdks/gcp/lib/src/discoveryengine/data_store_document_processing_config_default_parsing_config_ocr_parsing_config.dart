// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig {
  /// If true, will use native text instead of OCR text on pages containing native text.
  final pulumi.Input<bool>? useNativeText;

  /// Creates a new [DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig].
  /// [useNativeText] If true, will use native text instead of OCR text on pages containing native text.
  const DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig({
    this.useNativeText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useNativeText': ?useNativeText,
    };
  }

  factory DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig(
      useNativeText: (() { final guardedValue = map['useNativeText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
