// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_response.dart';
import 'google_privacy_dlp_v2_primitive_transformation_response.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class GooglePrivacyDlpV2InfoTypeTransformationResponse {
  /// InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in `InspectConfig`.
  final List<GooglePrivacyDlpV2InfoTypeResponse> infoTypes;
  /// Primitive transformation to apply to the infoType.
  final GooglePrivacyDlpV2PrimitiveTransformationResponse primitiveTransformation;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeTransformationResponse].
  /// [infoTypes] InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in `InspectConfig`.
  /// [primitiveTransformation] Primitive transformation to apply to the infoType.
  GooglePrivacyDlpV2InfoTypeTransformationResponse({
    required this.infoTypes,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': pulumi.Input.encodeList<GooglePrivacyDlpV2InfoTypeResponse, Map<String, dynamic>>(infoTypes, (value) => value.toMap()),
      'primitiveTransformation': primitiveTransformation.toMap(),
    };
  }

  factory GooglePrivacyDlpV2InfoTypeTransformationResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeTransformationResponse(
      infoTypes: pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(map['infoTypes'], (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap((value as Map).cast<String, dynamic>())),
      primitiveTransformation: GooglePrivacyDlpV2PrimitiveTransformationResponse.fromMap((map['primitiveTransformation'] as Map).cast<String, dynamic>()),
    );
  }
}

