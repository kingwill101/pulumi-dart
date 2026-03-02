// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_primitive_transformation.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class GooglePrivacyDlpV2InfoTypeTransformation {
  /// InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in `InspectConfig`.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoType>>? infoTypes;
  /// Primitive transformation to apply to the infoType.
  final pulumi.Input<GooglePrivacyDlpV2PrimitiveTransformation> primitiveTransformation;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeTransformation].
  /// [infoTypes] InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in `InspectConfig`.
  /// [primitiveTransformation] Primitive transformation to apply to the infoType.
  GooglePrivacyDlpV2InfoTypeTransformation({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primitiveTransformation': pulumi.Input.mapInputValue<GooglePrivacyDlpV2PrimitiveTransformation, Map<String, dynamic>>(primitiveTransformation, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2InfoTypeTransformation.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeTransformation(
      infoTypes: map['infoTypes'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2InfoType>(map['infoTypes'], (value) => GooglePrivacyDlpV2InfoType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      primitiveTransformation: (GooglePrivacyDlpV2PrimitiveTransformation.fromMap((map['primitiveTransformation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

