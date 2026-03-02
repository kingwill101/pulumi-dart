// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_color.dart';
import 'google_privacy_dlp_v2_selected_info_types.dart';

/// Configuration for determining how redaction of images should occur.
class GooglePrivacyDlpV2ImageTransformation {
  /// Apply transformation to all findings not specified in other ImageTransformation's selected_info_types. Only one instance is allowed within the ImageTransformations message.
  final pulumi.Input<Map<String, dynamic>>? allInfoTypes;
  /// Apply transformation to all text that doesn't match an infoType. Only one instance is allowed within the ImageTransformations message.
  final pulumi.Input<Map<String, dynamic>>? allText;
  /// The color to use when redacting content from an image. If not specified, the default is black.
  final pulumi.Input<GooglePrivacyDlpV2Color>? redactionColor;
  /// Apply transformation to the selected info_types.
  final pulumi.Input<GooglePrivacyDlpV2SelectedInfoTypes>? selectedInfoTypes;

  /// Creates a new [GooglePrivacyDlpV2ImageTransformation].
  /// [allInfoTypes] Apply transformation to all findings not specified in other ImageTransformation's selected_info_types. Only one instance is allowed within the ImageTransformations message.
  /// [allText] Apply transformation to all text that doesn't match an infoType. Only one instance is allowed within the ImageTransformations message.
  /// [redactionColor] The color to use when redacting content from an image. If not specified, the default is black.
  /// [selectedInfoTypes] Apply transformation to the selected info_types.
  GooglePrivacyDlpV2ImageTransformation({
    this.allInfoTypes,
    this.allText,
    this.redactionColor,
    this.selectedInfoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInfoTypes': ?allInfoTypes,
      'allText': ?allText,
      'redactionColor': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Color, Map<String, dynamic>>(redactionColor, (value) => value.toMap()),
      'selectedInfoTypes': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2SelectedInfoTypes, Map<String, dynamic>>(selectedInfoTypes, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ImageTransformation.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ImageTransformation(
      allInfoTypes: map['allInfoTypes'] == null ? null : ((map['allInfoTypes'] as Map).cast<String, dynamic>()).input(),
      allText: map['allText'] == null ? null : ((map['allText'] as Map).cast<String, dynamic>()).input(),
      redactionColor: map['redactionColor'] == null ? null : (GooglePrivacyDlpV2Color.fromMap((map['redactionColor'] as Map).cast<String, dynamic>())).input(),
      selectedInfoTypes: map['selectedInfoTypes'] == null ? null : (GooglePrivacyDlpV2SelectedInfoTypes.fromMap((map['selectedInfoTypes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

