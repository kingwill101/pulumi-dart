// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_deidentify_data_source_stats_response.dart';
import 'google_privacy_dlp_v2_requested_deidentify_options_response.dart';

/// The results of a Deidentify action from an inspect job.
class GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse {
  /// Stats about the de-identification operation.
  final pulumi.Input<GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse> deidentifyStats;
  /// De-identification config used for the request.
  final pulumi.Input<GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse> requestedOptions;

  /// Creates a new [GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse].
  /// [deidentifyStats] Stats about the de-identification operation.
  /// [requestedOptions] De-identification config used for the request.
  const GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse({
    required this.deidentifyStats,
    required this.requestedOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyStats': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse, Map<String, dynamic>>(deidentifyStats, (value) => value.toMap()),
      'requestedOptions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse, Map<String, dynamic>>(requestedOptions, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse(
      deidentifyStats: pulumi.Input.fromValue(GooglePrivacyDlpV2DeidentifyDataSourceStatsResponse.fromMap((map['deidentifyStats']! as Map).cast<String, dynamic>())),
      requestedOptions: pulumi.Input.fromValue(GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse.fromMap((map['requestedOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

