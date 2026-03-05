// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_scanned_data_incremental_field_response.dart';

/// The data scanned during processing (e.g. in incremental DataScan)
class GoogleCloudDataplexV1ScannedDataResponse {
  /// The range denoted by values of an incremental field
  final pulumi.Input<GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse> incrementalField;

  /// Creates a new [GoogleCloudDataplexV1ScannedDataResponse].
  /// [incrementalField] The range denoted by values of an incremental field
  GoogleCloudDataplexV1ScannedDataResponse({
    required this.incrementalField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incrementalField': pulumi.Input.mapInputValue<GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse, Map<String, dynamic>>(incrementalField, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1ScannedDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ScannedDataResponse(
      incrementalField: pulumi.Input.fromValue(GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse.fromMap((map['incrementalField']! as Map).cast<String, dynamic>())),
    );
  }
}

