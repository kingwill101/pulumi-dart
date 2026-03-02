// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_iodetails.dart';
import 'big_table_iodetails.dart';
import 'datastore_iodetails.dart';
import 'file_iodetails.dart';
import 'pub_sub_iodetails.dart';
import 'sdk_version.dart';
import 'spanner_iodetails.dart';

/// Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.
class JobMetadata {
  /// Identification of a Cloud Bigtable source used in the Dataflow job.
  final pulumi.Input<List<BigTableIODetails>>? bigTableDetails;
  /// Identification of a BigQuery source used in the Dataflow job.
  final pulumi.Input<List<BigQueryIODetails>>? bigqueryDetails;
  /// Identification of a Datastore source used in the Dataflow job.
  final pulumi.Input<List<DatastoreIODetails>>? datastoreDetails;
  /// Identification of a File source used in the Dataflow job.
  final pulumi.Input<List<FileIODetails>>? fileDetails;
  /// Identification of a Pub/Sub source used in the Dataflow job.
  final pulumi.Input<List<PubSubIODetails>>? pubsubDetails;
  /// The SDK version used to run the job.
  final pulumi.Input<SdkVersion>? sdkVersion;
  /// Identification of a Spanner source used in the Dataflow job.
  final pulumi.Input<List<SpannerIODetails>>? spannerDetails;
  /// List of display properties to help UI filter jobs.
  final pulumi.Input<Map<String, String>>? userDisplayProperties;

  /// Creates a new [JobMetadata].
  /// [bigTableDetails] Identification of a Cloud Bigtable source used in the Dataflow job.
  /// [bigqueryDetails] Identification of a BigQuery source used in the Dataflow job.
  /// [datastoreDetails] Identification of a Datastore source used in the Dataflow job.
  /// [fileDetails] Identification of a File source used in the Dataflow job.
  /// [pubsubDetails] Identification of a Pub/Sub source used in the Dataflow job.
  /// [sdkVersion] The SDK version used to run the job.
  /// [spannerDetails] Identification of a Spanner source used in the Dataflow job.
  /// [userDisplayProperties] List of display properties to help UI filter jobs.
  JobMetadata({
    this.bigTableDetails,
    this.bigqueryDetails,
    this.datastoreDetails,
    this.fileDetails,
    this.pubsubDetails,
    this.sdkVersion,
    this.spannerDetails,
    this.userDisplayProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigTableDetails': ?pulumi.Input.mapOptionalInputValue<List<BigTableIODetails>, List<Map<String, dynamic>>>(bigTableDetails, (value) => pulumi.Input.encodeList<BigTableIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bigqueryDetails': ?pulumi.Input.mapOptionalInputValue<List<BigQueryIODetails>, List<Map<String, dynamic>>>(bigqueryDetails, (value) => pulumi.Input.encodeList<BigQueryIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datastoreDetails': ?pulumi.Input.mapOptionalInputValue<List<DatastoreIODetails>, List<Map<String, dynamic>>>(datastoreDetails, (value) => pulumi.Input.encodeList<DatastoreIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileDetails': ?pulumi.Input.mapOptionalInputValue<List<FileIODetails>, List<Map<String, dynamic>>>(fileDetails, (value) => pulumi.Input.encodeList<FileIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pubsubDetails': ?pulumi.Input.mapOptionalInputValue<List<PubSubIODetails>, List<Map<String, dynamic>>>(pubsubDetails, (value) => pulumi.Input.encodeList<PubSubIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sdkVersion': ?pulumi.Input.mapOptionalInputValue<SdkVersion, Map<String, dynamic>>(sdkVersion, (value) => value.toMap()),
      'spannerDetails': ?pulumi.Input.mapOptionalInputValue<List<SpannerIODetails>, List<Map<String, dynamic>>>(spannerDetails, (value) => pulumi.Input.encodeList<SpannerIODetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userDisplayProperties': ?userDisplayProperties,
    };
  }

  factory JobMetadata.fromMap(Map<String, dynamic> map) {
    return JobMetadata(
      bigTableDetails: map['bigTableDetails'] == null ? null : (pulumi.Input.decodeList<BigTableIODetails>(map['bigTableDetails']!, (value) => BigTableIODetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bigqueryDetails: map['bigqueryDetails'] == null ? null : (pulumi.Input.decodeList<BigQueryIODetails>(map['bigqueryDetails']!, (value) => BigQueryIODetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      datastoreDetails: map['datastoreDetails'] == null ? null : (pulumi.Input.decodeList<DatastoreIODetails>(map['datastoreDetails']!, (value) => DatastoreIODetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fileDetails: map['fileDetails'] == null ? null : (pulumi.Input.decodeList<FileIODetails>(map['fileDetails']!, (value) => FileIODetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pubsubDetails: map['pubsubDetails'] == null ? null : (pulumi.Input.decodeList<PubSubIODetails>(map['pubsubDetails']!, (value) => PubSubIODetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sdkVersion: map['sdkVersion'] == null ? null : (SdkVersion.fromMap((map['sdkVersion']! as Map).cast<String, dynamic>())).input(),
      spannerDetails: map['spannerDetails'] == null ? null : (pulumi.Input.decodeList<SpannerIODetails>(map['spannerDetails']!, (value) => SpannerIODetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userDisplayProperties: map['userDisplayProperties'] == null ? null : ((map['userDisplayProperties']! as Map).cast<String, String>()).input(),
    );
  }
}

