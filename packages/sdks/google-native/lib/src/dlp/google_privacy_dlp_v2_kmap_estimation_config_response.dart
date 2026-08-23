// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_auxiliary_table_response.dart';
import 'google_privacy_dlp_v2_tagged_field_response.dart';

/// Reidentifiability metric. This corresponds to a risk model similar to what is called "journalist risk" in the literature, except the attack dataset is statistically modeled instead of being perfectly known. This can be done using publicly available data (like the US Census), or using a custom statistical model (indicated as one or several BigQuery tables), or by extrapolating from the distribution of values in the input dataset.
class GooglePrivacyDlpV2KMapEstimationConfigResponse {
  /// Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers column must appear in exactly one column of one auxiliary table.
  final pulumi.Input<List<GooglePrivacyDlpV2AuxiliaryTableResponse>> auxiliaryTables;
  /// Fields considered to be quasi-identifiers. No two columns can have the same tag.
  final pulumi.Input<List<GooglePrivacyDlpV2TaggedFieldResponse>> quasiIds;
  /// ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  final pulumi.Input<String> regionCode;

  /// Creates a new [GooglePrivacyDlpV2KMapEstimationConfigResponse].
  /// [auxiliaryTables] Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers column must appear in exactly one column of one auxiliary table.
  /// [quasiIds] Fields considered to be quasi-identifiers. No two columns can have the same tag.
  /// [regionCode] ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  const GooglePrivacyDlpV2KMapEstimationConfigResponse({
    required this.auxiliaryTables,
    required this.quasiIds,
    required this.regionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryTables': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2AuxiliaryTableResponse>, List<Map<String, dynamic>>>(auxiliaryTables, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2AuxiliaryTableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quasiIds': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2TaggedFieldResponse>, List<Map<String, dynamic>>>(quasiIds, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2TaggedFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionCode': regionCode,
    };
  }

  factory GooglePrivacyDlpV2KMapEstimationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KMapEstimationConfigResponse(
      auxiliaryTables: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2AuxiliaryTableResponse>(map['auxiliaryTables']!, (value) => GooglePrivacyDlpV2AuxiliaryTableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      quasiIds: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2TaggedFieldResponse>(map['quasiIds']!, (value) => GooglePrivacyDlpV2TaggedFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      regionCode: pulumi.Input.fromValue(map['regionCode'] as String),
    );
  }
}
