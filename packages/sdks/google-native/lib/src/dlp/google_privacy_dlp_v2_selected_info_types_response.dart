// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_response.dart';

/// Apply transformation to the selected info_types.
class GooglePrivacyDlpV2SelectedInfoTypesResponse {
  /// InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeResponse>> infoTypes;

  /// Creates a new [GooglePrivacyDlpV2SelectedInfoTypesResponse].
  /// [infoTypes] InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.
  GooglePrivacyDlpV2SelectedInfoTypesResponse({required this.infoTypes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes':
          pulumi.Input.mapInputValue<
            List<GooglePrivacyDlpV2InfoTypeResponse>,
            List<Map<String, dynamic>>
          >(
            infoTypes,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2InfoTypeResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GooglePrivacyDlpV2SelectedInfoTypesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2SelectedInfoTypesResponse(
      infoTypes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(
          map['infoTypes']!,
          (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
