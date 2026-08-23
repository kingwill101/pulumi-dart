// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1_dicom_big_query_destination_write_disposition.dart';

/// The BigQuery table where the server writes the output.
class GoogleCloudHealthcareV1DicomBigQueryDestination {
  /// Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final pulumi.Input<bool>? force;
  /// BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDatasetId.tableId`
  final pulumi.Input<String>? tableUri;
  /// Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
  final pulumi.Input<GoogleCloudHealthcareV1DicomBigQueryDestinationWriteDisposition>? writeDisposition;

  /// Creates a new [GoogleCloudHealthcareV1DicomBigQueryDestination].
  /// [force] Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  /// [tableUri] BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDatasetId.tableId`
  /// [writeDisposition] Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
  const GoogleCloudHealthcareV1DicomBigQueryDestination({
    this.force,
    this.tableUri,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'force': ?force,
      'tableUri': ?tableUri,
      'writeDisposition': ?pulumi.Input.mapOptionalInputValue<GoogleCloudHealthcareV1DicomBigQueryDestinationWriteDisposition, String>(writeDisposition, (value) => value.wireValue),
    };
  }

  factory GoogleCloudHealthcareV1DicomBigQueryDestination.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1DicomBigQueryDestination(
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tableUri: (() { final guardedValue = map['tableUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writeDisposition: (() { final guardedValue = map['writeDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudHealthcareV1DicomBigQueryDestinationWriteDisposition.fromValue(guardedValue as String)); })(),
    );
  }
}
