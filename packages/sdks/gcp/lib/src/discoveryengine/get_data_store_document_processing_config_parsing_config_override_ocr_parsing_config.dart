// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig {
  /// If true, will use native text instead of OCR text on pages containing native text.
  final pulumi.Input<bool> useNativeText;

  /// Creates a new [GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig].
  /// [useNativeText] If true, will use native text instead of OCR text on pages containing native text.
  const GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig({
    required this.useNativeText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useNativeText': useNativeText,
    };
  }

  factory GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfig(
      useNativeText: pulumi.Input.fromValue(map['useNativeText'] as bool),
    );
  }
}
