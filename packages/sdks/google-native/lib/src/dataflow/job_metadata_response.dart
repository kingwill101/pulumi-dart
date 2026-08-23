// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_iodetails_response.dart';
import 'big_table_iodetails_response.dart';
import 'datastore_iodetails_response.dart';
import 'file_iodetails_response.dart';
import 'pub_sub_iodetails_response.dart';
import 'sdk_version_response.dart';
import 'spanner_iodetails_response.dart';

/// Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.
class JobMetadataResponse {
  /// Identification of a Cloud Bigtable source used in the Dataflow job.
  final pulumi.Input<List<BigTableIODetailsResponse>> bigTableDetails;
  /// Identification of a BigQuery source used in the Dataflow job.
  final pulumi.Input<List<BigQueryIODetailsResponse>> bigqueryDetails;
  /// Identification of a Datastore source used in the Dataflow job.
  final pulumi.Input<List<DatastoreIODetailsResponse>> datastoreDetails;
  /// Identification of a File source used in the Dataflow job.
  final pulumi.Input<List<FileIODetailsResponse>> fileDetails;
  /// Identification of a Pub/Sub source used in the Dataflow job.
  final pulumi.Input<List<PubSubIODetailsResponse>> pubsubDetails;
  /// The SDK version used to run the job.
  final pulumi.Input<SdkVersionResponse> sdkVersion;
  /// Identification of a Spanner source used in the Dataflow job.
  final pulumi.Input<List<SpannerIODetailsResponse>> spannerDetails;
  /// List of display properties to help UI filter jobs.
  final pulumi.Input<Map<String, String>> userDisplayProperties;

  /// Creates a new [JobMetadataResponse].
  /// [bigTableDetails] Identification of a Cloud Bigtable source used in the Dataflow job.
  /// [bigqueryDetails] Identification of a BigQuery source used in the Dataflow job.
  /// [datastoreDetails] Identification of a Datastore source used in the Dataflow job.
  /// [fileDetails] Identification of a File source used in the Dataflow job.
  /// [pubsubDetails] Identification of a Pub/Sub source used in the Dataflow job.
  /// [sdkVersion] The SDK version used to run the job.
  /// [spannerDetails] Identification of a Spanner source used in the Dataflow job.
  /// [userDisplayProperties] List of display properties to help UI filter jobs.
  const JobMetadataResponse({
    required this.bigTableDetails,
    required this.bigqueryDetails,
    required this.datastoreDetails,
    required this.fileDetails,
    required this.pubsubDetails,
    required this.sdkVersion,
    required this.spannerDetails,
    required this.userDisplayProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigTableDetails': pulumi.Input.mapInputValue<List<BigTableIODetailsResponse>, List<Map<String, dynamic>>>(bigTableDetails, (value) => pulumi.Input.encodeList<BigTableIODetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bigqueryDetails': pulumi.Input.mapInputValue<List<BigQueryIODetailsResponse>, List<Map<String, dynamic>>>(bigqueryDetails, (value) => pulumi.Input.encodeList<BigQueryIODetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datastoreDetails': pulumi.Input.mapInputValue<List<DatastoreIODetailsResponse>, List<Map<String, dynamic>>>(datastoreDetails, (value) => pulumi.Input.encodeList<DatastoreIODetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileDetails': pulumi.Input.mapInputValue<List<FileIODetailsResponse>, List<Map<String, dynamic>>>(fileDetails, (value) => pulumi.Input.encodeList<FileIODetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pubsubDetails': pulumi.Input.mapInputValue<List<PubSubIODetailsResponse>, List<Map<String, dynamic>>>(pubsubDetails, (value) => pulumi.Input.encodeList<PubSubIODetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sdkVersion': pulumi.Input.mapInputValue<SdkVersionResponse, Map<String, dynamic>>(sdkVersion, (value) => value.toMap()),
      'spannerDetails': pulumi.Input.mapInputValue<List<SpannerIODetailsResponse>, List<Map<String, dynamic>>>(spannerDetails, (value) => pulumi.Input.encodeList<SpannerIODetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userDisplayProperties': userDisplayProperties,
    };
  }

  factory JobMetadataResponse.fromMap(Map<String, dynamic> map) {
    return JobMetadataResponse(
      bigTableDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<BigTableIODetailsResponse>(map['bigTableDetails']!, (value) => BigTableIODetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      bigqueryDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<BigQueryIODetailsResponse>(map['bigqueryDetails']!, (value) => BigQueryIODetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      datastoreDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<DatastoreIODetailsResponse>(map['datastoreDetails']!, (value) => DatastoreIODetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      fileDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<FileIODetailsResponse>(map['fileDetails']!, (value) => FileIODetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      pubsubDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<PubSubIODetailsResponse>(map['pubsubDetails']!, (value) => PubSubIODetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sdkVersion: pulumi.Input.fromValue(SdkVersionResponse.fromMap((map['sdkVersion']! as Map).cast<String, dynamic>())),
      spannerDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<SpannerIODetailsResponse>(map['spannerDetails']!, (value) => SpannerIODetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      userDisplayProperties: pulumi.Input.fromValue((map['userDisplayProperties'] as Map).cast<String, String>()),
    );
  }
}
