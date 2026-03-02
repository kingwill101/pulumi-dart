// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateTemplateMetadataMultiLanguageDetection {
  /// If true, multi language detection will be enabled.
  final pulumi.Input<bool> enableMultiLanguageDetection;

  /// Creates a new [TemplateTemplateMetadataMultiLanguageDetection].
  /// [enableMultiLanguageDetection] If true, multi language detection will be enabled.
  TemplateTemplateMetadataMultiLanguageDetection({
    required this.enableMultiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMultiLanguageDetection': enableMultiLanguageDetection,
    };
  }

  factory TemplateTemplateMetadataMultiLanguageDetection.fromMap(Map<String, dynamic> map) {
    return TemplateTemplateMetadataMultiLanguageDetection(
      enableMultiLanguageDetection: (map['enableMultiLanguageDetection'] as bool).input(),
    );
  }
}

