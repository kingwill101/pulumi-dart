// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';
import 'google_privacy_dlp_v2_info_type_response.dart';

/// A column with a semantic tag attached.
class GooglePrivacyDlpV2QuasiIdResponse {
  /// A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  final pulumi.Input<String> customTag;
  /// Identifies the column.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> field;
  /// If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data
  final pulumi.Input<Map<String, dynamic>> inferred;
  /// A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported_by=RISK_ANALYSIS filter.
  final pulumi.Input<GooglePrivacyDlpV2InfoTypeResponse> infoType;

  /// Creates a new [GooglePrivacyDlpV2QuasiIdResponse].
  /// [customTag] A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).
  /// [field] Identifies the column.
  /// [inferred] If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data
  /// [infoType] A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported_by=RISK_ANALYSIS filter.
  GooglePrivacyDlpV2QuasiIdResponse({
    required this.customTag,
    required this.field,
    required this.inferred,
    required this.infoType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customTag': customTag,
      'field': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(field, (value) => value.toMap()),
      'inferred': inferred,
      'infoType': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InfoTypeResponse, Map<String, dynamic>>(infoType, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2QuasiIdResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2QuasiIdResponse(
      customTag: (map['customTag'] as String).input(),
      field: (GooglePrivacyDlpV2FieldIdResponse.fromMap((map['field'] as Map).cast<String, dynamic>())).input(),
      inferred: ((map['inferred'] as Map).cast<String, dynamic>()).input(),
      infoType: (GooglePrivacyDlpV2InfoTypeResponse.fromMap((map['infoType'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

