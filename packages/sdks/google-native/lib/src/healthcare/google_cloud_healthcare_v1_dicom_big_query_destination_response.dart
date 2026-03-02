// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The BigQuery table where the server writes the output.
class GoogleCloudHealthcareV1DicomBigQueryDestinationResponse {
  /// Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final pulumi.Input<bool> force;
  /// BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDatasetId.tableId`
  final pulumi.Input<String> tableUri;
  /// Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
  final pulumi.Input<String> writeDisposition;

  /// Creates a new [GoogleCloudHealthcareV1DicomBigQueryDestinationResponse].
  /// [force] Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  /// [tableUri] BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDatasetId.tableId`
  /// [writeDisposition] Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
  GoogleCloudHealthcareV1DicomBigQueryDestinationResponse({
    required this.force,
    required this.tableUri,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': force,
      'tableUri': tableUri,
      'writeDisposition': writeDisposition,
    };
  }

  factory GoogleCloudHealthcareV1DicomBigQueryDestinationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1DicomBigQueryDestinationResponse(
      force: (map['force'] as bool).input(),
      tableUri: (map['tableUri'] as String).input(),
      writeDisposition: (map['writeDisposition'] as String).input(),
    );
  }
}

