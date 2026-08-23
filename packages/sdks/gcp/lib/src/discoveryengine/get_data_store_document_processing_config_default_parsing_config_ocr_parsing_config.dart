// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig {
  /// If true, will use native text instead of OCR text on pages containing native text.
  final pulumi.Input<bool> useNativeText;

  /// Creates a new [GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig].
  /// [useNativeText] If true, will use native text instead of OCR text on pages containing native text.
  const GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig({
    required this.useNativeText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useNativeText': useNativeText,
    };
  }

  factory GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfigDefaultParsingConfigOcrParsingConfig(
      useNativeText: pulumi.Input.fromValue(map['useNativeText'] as bool),
    );
  }
}
