// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_color_response.dart';
import 'google_privacy_dlp_v2_selected_info_types_response.dart';

/// Configuration for determining how redaction of images should occur.
class GooglePrivacyDlpV2ImageTransformationResponse {
  /// Apply transformation to all findings not specified in other ImageTransformation's selected_info_types. Only one instance is allowed within the ImageTransformations message.
  final pulumi.Input<Map<String, dynamic>> allInfoTypes;
  /// Apply transformation to all text that doesn't match an infoType. Only one instance is allowed within the ImageTransformations message.
  final pulumi.Input<Map<String, dynamic>> allText;
  /// The color to use when redacting content from an image. If not specified, the default is black.
  final pulumi.Input<GooglePrivacyDlpV2ColorResponse> redactionColor;
  /// Apply transformation to the selected info_types.
  final pulumi.Input<GooglePrivacyDlpV2SelectedInfoTypesResponse> selectedInfoTypes;

  /// Creates a new [GooglePrivacyDlpV2ImageTransformationResponse].
  /// [allInfoTypes] Apply transformation to all findings not specified in other ImageTransformation's selected_info_types. Only one instance is allowed within the ImageTransformations message.
  /// [allText] Apply transformation to all text that doesn't match an infoType. Only one instance is allowed within the ImageTransformations message.
  /// [redactionColor] The color to use when redacting content from an image. If not specified, the default is black.
  /// [selectedInfoTypes] Apply transformation to the selected info_types.
  GooglePrivacyDlpV2ImageTransformationResponse({
    required this.allInfoTypes,
    required this.allText,
    required this.redactionColor,
    required this.selectedInfoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInfoTypes': allInfoTypes,
      'allText': allText,
      'redactionColor': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ColorResponse, Map<String, dynamic>>(redactionColor, (value) => value.toMap()),
      'selectedInfoTypes': pulumi.Input.mapInputValue<GooglePrivacyDlpV2SelectedInfoTypesResponse, Map<String, dynamic>>(selectedInfoTypes, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ImageTransformationResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ImageTransformationResponse(
      allInfoTypes: ((map['allInfoTypes'] as Map).cast<String, dynamic>()).input(),
      allText: ((map['allText'] as Map).cast<String, dynamic>()).input(),
      redactionColor: (GooglePrivacyDlpV2ColorResponse.fromMap((map['redactionColor'] as Map).cast<String, dynamic>())).input(),
      selectedInfoTypes: (GooglePrivacyDlpV2SelectedInfoTypesResponse.fromMap((map['selectedInfoTypes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

