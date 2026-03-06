// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_result_post_scan_actions_result_response.dart';
import 'google_cloud_dataplex_v1_data_profile_result_profile_response.dart';
import 'google_cloud_dataplex_v1_scanned_data_response.dart';

/// DataProfileResult defines the output of DataProfileScan. Each field of the table will have field type specific profile result.
class GoogleCloudDataplexV1DataProfileResultResponse {
  /// The result of post scan actions.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse> postScanActionsResult;
  /// The profile information per field.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileResultProfileResponse> profile;
  /// The count of rows scanned.
  final pulumi.Input<String> rowCount;
  /// The data scanned for this result.
  final pulumi.Input<GoogleCloudDataplexV1ScannedDataResponse> scannedData;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultResponse].
  /// [postScanActionsResult] The result of post scan actions.
  /// [profile] The profile information per field.
  /// [rowCount] The count of rows scanned.
  /// [scannedData] The data scanned for this result.
  const GoogleCloudDataplexV1DataProfileResultResponse({
    required this.postScanActionsResult,
    required this.profile,
    required this.rowCount,
    required this.scannedData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postScanActionsResult': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse, Map<String, dynamic>>(postScanActionsResult, (value) => value.toMap()),
      'profile': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataProfileResultProfileResponse, Map<String, dynamic>>(profile, (value) => value.toMap()),
      'rowCount': rowCount,
      'scannedData': pulumi.Input.mapInputValue<GoogleCloudDataplexV1ScannedDataResponse, Map<String, dynamic>>(scannedData, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1DataProfileResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultResponse(
      postScanActionsResult: pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse.fromMap((map['postScanActionsResult']! as Map).cast<String, dynamic>())),
      profile: pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileResultProfileResponse.fromMap((map['profile']! as Map).cast<String, dynamic>())),
      rowCount: pulumi.Input.fromValue(map['rowCount'] as String),
      scannedData: pulumi.Input.fromValue(GoogleCloudDataplexV1ScannedDataResponse.fromMap((map['scannedData']! as Map).cast<String, dynamic>())),
    );
  }
}

