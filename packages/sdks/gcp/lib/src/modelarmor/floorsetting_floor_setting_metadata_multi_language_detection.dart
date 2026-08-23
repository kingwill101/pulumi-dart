// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FloorsettingFloorSettingMetadataMultiLanguageDetection {
  /// If true, multi language detection will be enabled.
  final pulumi.Input<bool> enableMultiLanguageDetection;

  /// Creates a new [FloorsettingFloorSettingMetadataMultiLanguageDetection].
  /// [enableMultiLanguageDetection] If true, multi language detection will be enabled.
  const FloorsettingFloorSettingMetadataMultiLanguageDetection({
    required this.enableMultiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMultiLanguageDetection': enableMultiLanguageDetection,
    };
  }

  factory FloorsettingFloorSettingMetadataMultiLanguageDetection.fromMap(Map<String, dynamic> map) {
    return FloorsettingFloorSettingMetadataMultiLanguageDetection(
      enableMultiLanguageDetection: pulumi.Input.fromValue(map['enableMultiLanguageDetection'] as bool),
    );
  }
}
