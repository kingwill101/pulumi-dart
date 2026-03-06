// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_requested_options_response.dart';
import 'google_privacy_dlp_v2_result_response.dart';

/// The results of an inspect DataSource job.
class GooglePrivacyDlpV2InspectDataSourceDetailsResponse {
  /// The configuration used for this job.
  final pulumi.Input<GooglePrivacyDlpV2RequestedOptionsResponse> requestedOptions;
  /// A summary of the outcome of this inspection job.
  final pulumi.Input<GooglePrivacyDlpV2ResultResponse> result;

  /// Creates a new [GooglePrivacyDlpV2InspectDataSourceDetailsResponse].
  /// [requestedOptions] The configuration used for this job.
  /// [result] A summary of the outcome of this inspection job.
  const GooglePrivacyDlpV2InspectDataSourceDetailsResponse({
    required this.requestedOptions,
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestedOptions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RequestedOptionsResponse, Map<String, dynamic>>(requestedOptions, (value) => value.toMap()),
      'result': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ResultResponse, Map<String, dynamic>>(result, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2InspectDataSourceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectDataSourceDetailsResponse(
      requestedOptions: pulumi.Input.fromValue(GooglePrivacyDlpV2RequestedOptionsResponse.fromMap((map['requestedOptions']! as Map).cast<String, dynamic>())),
      result: pulumi.Input.fromValue(GooglePrivacyDlpV2ResultResponse.fromMap((map['result']! as Map).cast<String, dynamic>())),
    );
  }
}

